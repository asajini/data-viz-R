library(tidyverse)
options(digits = 3)
library(dslabs)
data(brexit_polls)
p <- 0.481    # official proportion voting "Remain"
d <- 2*p-1    # official spread


brexit_polls[1,]
x_hat <- brexit_polls[1,6] 
x_hat
N <- brexit_polls[1,5]
N
se_hat <- sqrt(x_hat * (1- x_hat)/N)

ci <- c(x_hat - qnorm(0.975)*se_hat, x_hat +qnorm(0.975)*se_hat)
ci