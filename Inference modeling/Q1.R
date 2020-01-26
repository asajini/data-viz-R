library(tidyverse)
options(digits = 3)
library(dslabs)
data(brexit_polls)
p <- 0.481    # official proportion voting "Remain"
d <- 2*p-1    # official spread
N <- 1500

#What is the expected total number of voters in the sample choosing "Remain"?
Es = N*p
Es
#What is the standard error of the total number of voters in the sample choosing "Remain"?
SE <- sqrt(N*p*(1-p))
SE

#What is the standard error of  X^ , the proportion of "Remain" voters?
sqrt((p*(1-p))/N)

#expected value of spread
p-(1-p)

#standard error of spread
2* sqrt((p*(1-p))/N)

  
