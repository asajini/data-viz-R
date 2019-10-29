
library(gtools)
library(tidyverse)
options(digits=3)
library(prob)
set.seed(21, sample.kind = "Rounding")

B<-10000

S<-replicate(B,{
  X<-sample(c(1,-0.25),size=44,replace=TRUE, prob=c(0.2,0.8))
  sum(X)
})

mean(S>8)
