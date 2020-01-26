library(tidyverse)
options(digits = 3)
library(dslabs)
data(brexit_polls)
p <- 0.481    
d <- 2*p-1 
june_polls

combined_by_type <- june_polls %>%
  group_by(poll_type) %>%
  summarize(N = sum(samplesize),
            spread = sum(spread*samplesize)/N,
            p_hat = (spread + 1)/2)

combined_by_type
p_hat <- combined_by_type[[1,4]]
N <- combined_by_type[[1,2]]

p_hat

se_p_hat<- sqrt(p_hat * (1-p_hat)/N)
se_d <- 2* se_p_hat
se_d

ci <- c(-0.00741 - qnorm(0.975)*se_d, -0.00741 +qnorm(0.975)*se_d)
ci

p2_hat <- combined_by_type[[2,4]]
N2 <- combined_by_type[[2,2]]

p2_hat
N2

se_p2_hat<- sqrt(p2_hat * (1-p2_hat)/N2)
se_d2 <- 2* se_p2_hat
se_d2

ci2 <- c(0.0127 - qnorm(0.975)*se_d2, 0.0127 +qnorm(0.975)*se_d2)
ci2
ci