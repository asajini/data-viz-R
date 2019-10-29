
library(gtools)
library(tidyverse)
options(digits=10)
library(prob)
set.seed(21, sample.kind = "Rounding")

p_win<-5/38
p_loss<-33/38
p_win
p_loss

mu<-((6*p_win)+((-1)*(p_loss)))

mu_500<-500*mu
mu_500
se<-abs(6+1)*(sqrt(p_win*p_loss))
se_avg<-se/sqrt(500)
se_avg
se_500<-sqrt(500)*se
se_500
