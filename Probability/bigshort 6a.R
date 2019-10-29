options(digits = 10)
library(tidyverse)
library(dslabs)
library(dplyr)

set.seed(29, sample.kind = "Rounding")

n<-1000
z<-qnorm(0.05)
mu <- (-1117250)
se <- 580994.333
l <- (-150000)
p <- 0.015
x <- 3268.063103
B<-10000

profit <-replicate(B, { p <- 0.015 + sample(seq(-0.01, 0.01, length = 100), 1)

draws <- sample(c(x, l), size = n, replace = TRUE, prob = c((1-p),p))

sum(draws)

})

mean(profit) #expected value
mean(profit<0) # probability of losing money
mean(profit< (-1000000)) # losing more than 1 million




