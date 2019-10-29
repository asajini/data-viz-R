options(digits = 10)
library(tidyverse)
library(dslabs)
library(dplyr)

set.seed(27, sample.kind = "Rounding")

data(death_prob)
n<-1000

p_loss <- 0.015
p_not_loss <- (1-p_loss)
B<-10000

#What is the reported profit (or loss) in millions (that is, divided by  106 )?

S<-replicate (B,{
  X<- sample(c(1150,-150000) , size=n, replace = TRUE,
             prob = c(p_not_loss,p_loss))
  sum(X)
})

mean(S)

mean(S < -1000000)




