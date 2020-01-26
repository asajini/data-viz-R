library(tidyverse)
options(digits = 3)
library(dslabs)
data(brexit_polls)
p <- 0.481    
d <- 2*p-1 
june_polls

june_polls <- brexit_polls %>% filter(enddate >= "2016-06-01")
june_polls <- june_polls %>% mutate(se_x_hat = sqrt(x_hat*(1-x_hat)/samplesize) )
june_polls <- june_polls %>% mutate(se_hat = 2*se_x_hat)
june_polls <- june_polls %>% mutate(lower= spread- qnorm(0.975)*se_hat, upper= spread + qnorm(0.975)*se_hat)
june_polls %>% arrange((pollster))
june_polls <- june_polls %>% mutate(hit = (june_polls$lower < -0.038 & june_polls$upper > -0.038)) 
june_polls %>% group_by(pollster) %>% summarize(mean(hit))
june_polls %>% arrange(poll_type)

june_polls  %>% group_by(poll_type) %>% ggplot(aes(poll_type,spread)) + geom_boxplot() + geom_point()