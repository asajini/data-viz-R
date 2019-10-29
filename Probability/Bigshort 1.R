library(gtools)
library(tidyverse)
options(digits=3)
library(prob)

p_correct<-(1/5)

p_not_correct<-(1-(p_correct))

p_not_correct

X<-sample(c(1,-0.25),size=44,replace=TRUE,prob = c(0.20,0.80))

mean(X)

sd(X)
1-pnorm(8,0,3.316)

