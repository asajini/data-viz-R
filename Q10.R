library(tidyverse)
options(digits = 3)
# load brexit_polls object and add x_hat column
library(dslabs)
data(brexit_polls)
brexit_polls <- brexit_polls %>%
  mutate(x_hat = (spread + 1)/2)
# final proportion voting "Remain"
p <- 0.481
brexit_hit <- brexit_polls %>%
  mutate(p_hat = (spread + 1)/2,
         se_spread = 2*sqrt(p_hat*(1-p_hat)/samplesize),
         spread_lower = spread - qnorm(.975)*se_spread,
         spread_upper = spread + qnorm(.975)*se_spread,
         hit = spread_lower < -0.038 & spread_upper > -0.038) %>%
  select(poll_type, hit)

brexit_hit

two_by_two <- brexit_hit %>% group_by(poll_type) %>%
  summarize(hit = sum(hit),miss = n()-hit)
two_by_two
chisq_test<-two_by_two %>% select(-poll_type) %>% chisq.test()

chisq_test$p.value

odds_online <- (48/85)/(37/85)

odds_online

odds_telephone <- (10/42)/(32/42)
odds_telephone

odds_online/odds_telephone
