library(tidyverse)
options(digits = 3)
library(dslabs)
data(brexit_polls)
p <- 0.481    # official proportion voting "Remain"
d <- 2*p-1    # official spread
N <- 1500

head(brexit_polls)
brexit_polls <- brexit_polls %>% mutate (x_hat = (spread+1)/2)

head(brexit_polls)
mean(brexit_polls$spread)
sd(brexit_polls$spread)

mean(brexit_polls$x_hat)
sd(brexit_polls$x_hat)
  