options(digits = 10)
library(tidyverse)
library(dslabs)
library(dplyr)

data(death_prob)

x<-0.003193
p_default<-(-150000)

y<-1-x

(1150- p_default)*sqrt(x*y)

pnorm(0,667378.05,269647.416083)

# 2.b calculate premium amt for 50 yr old Male
#(700000)/1000 - (-150000*0.005013) /(1-0.005013)

#2.c calc Standard error  with premium

#sqrt(1000)*abs(1455.7385 + 150000) * sqrt(0.005013*(1-0.005013))

#What is the probability of losing money on a series of 1,000 policies to 50 year old males?

#pnorm(0,700000,338254.2706)

#What is the expected value of the company's profits over 1,000 policies?
#1000*((0.015*-150000)+((1-0.015)*1150))

#What is the standard error of the expected value of the company's profits over 1,000 policies?
sqrt(1000)*abs(1150+150000)*sqrt(0.015*0.985)

#What is the probability of the company losing money?
pnorm(0,-1117250,580994.333)


#no 4
pnorm(-1000000,-1117250,580994)




