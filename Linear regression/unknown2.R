library(tidyverse)
library(HistData)
data("GaltonFamilies")

set.seed(1, sample.kind = "Rounding") # if you are using R 3.6 or later
galton <- GaltonFamilies %>%
  group_by(family, gender) %>%
  sample_n(1) %>%
  ungroup() %>% 
  gather(parent, parentHeight, father:mother) %>%
  mutate(child = ifelse(gender == "female", "daughter", "son")) %>%
  unite(pair, c("parent", "child"))

galton

galton %>% group_by(pair) %>% summarize(n=n())

Calculate the correlation coefficients for fathers and daughters, fathers and sons, mothers and daughters and mothers and sons.

## 9 Which pair has the strongest correlation in heights?

galton %>% group_by(pair) %>% summarize ( cor = cor(parentHeight,childHeight)) %>% 
  filter(cor == max(cor))

galton %>% group_by(pair) %>% summarize ( cor = cor(parentHeight,childHeight)) %>% 
  filter(cor == min(cor))

## 10 Use lm and the broom package to fit regression lines for each parent-child pair type. Compute the least squares estimates, standard errors, confidence intervals and p-values for the parentHeight coefficient for each pair.
##What is the estimate of the father-daughter coefficient?

library(broom)
galton %>% 
  group_by(pair) %>%
  do(tidy(lm(childHeight~parentHeight, data = .), conf.int = TRUE)) %>%
  filter(term == "parentHeight",pair == "father_daughter") %>%
  pull(estimate)

## For every 1-inch increase in mother's height, how many inches does the typical son's height increase?
library(broom)
galton %>% 
  group_by(pair) %>%
  do(tidy(lm(childHeight~parentHeight, data = .), conf.int = TRUE)) %>%
  filter(term == "parentHeight",pair == "mother_son") %>%
  pull(estimate)


galton %>%
  group_by(pair) %>% 
  do(tidy(lm(childHeight~parentHeight,data = .), conf.int = TRUE)) %>%
  filter(term == "parentHeight" & p.value < 0.5)
