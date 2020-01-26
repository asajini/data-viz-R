# suggested libraries and options
library(tidyverse)
options(digits = 3)
# load brexit_polls object and add x_hat column
library(dslabs)
data(brexit_polls)
brexit_polls <- brexit_polls %>%
  mutate(x_hat = (spread + 1)/2)
# final proportion voting "Remain"
p <- 0.481

head(brexit_polls)

brexit_polls %>% group_by(poll_type) %>%
  ggplot(aes(enddate,spread,color=poll_type)) +
  geom_point()+geom_smooth(method = "loess",span = 0.4)+geom_hline(yintercept = -0.038)