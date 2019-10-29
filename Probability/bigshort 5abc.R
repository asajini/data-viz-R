options(digits = 3)
library(tidyverse)
library(dslabs)
library(dplyr)

set.seed(28, sample.kind = "Rounding")

n<-1000
z<-qnorm(0.05)
mu <- (-1117250)
se <- 580994.333
l <- (-150000)
p <- 0.015

#Calculate the premium required for a 5% chance of losing money given  n=1000  loans, probability of death  p=0.015 , and loss per claim  l=???150000 . Save this premium as x for use in further questions.
#x <- -l*( n*p - z*sqrt(n*p*(1-p)))/ ( n*(1-p) + z*sqrt(n*p*(1-p)))

#What is the expected profit per policy at this rate?

#expected_profit <- l*p + x*(1-p)
#expected_profit

#What is the expected profit over 1,000 policies?
#n*expected_profit

B <- 10000
pr_profit <- replicate(B, {
  pr_losing <- sample( c(3268.063103, (-150000)), n, 
                   prob=c(1-p, p), replace = TRUE) 
  sum(pr_losing)
})
mean(pr_profit)    # expected value of the profit over n loans
mean(pr_profit<0) 
