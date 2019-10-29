options(digits = 10)
library(tidyverse)
library(dslabs)
library(dplyr)

set.seed(25, sample.kind = "Rounding")

data(death_prob)
n<-1000

p_loss <- 0.015
p_not_loss <- (1-0.015)

#What is the reported profit (or loss) in millions (that is, divided by  10^6 )?

X<- sample(c(1150,-150000) , size=n, replace = TRUE,
           prob = c(p_not_loss,p_loss))

sum(X)


