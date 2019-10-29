options(digits = 10)
library(tidyverse)
library(dslabs)
library(dplyr)

data(death_prob)

p_default<-(-150000)

#What is the lowest death probability for which the chance of losing money exceeds 90%?
p<-seq(.01, .03, .001)


pr_mu <- 1000*((p*-150000)+((1-p)*1150))

pr_se <- sqrt(1000)*abs(1150+150000)*sqrt(p*(1-p))

# this is the answer for 3.e
#pr_win<- pnorm(0,pr_mu, pr_se)

#this is the answer for 3f
pr_win<- pnorm(-1000000,pr_mu, pr_se)
pr_win