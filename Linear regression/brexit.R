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

brexit_long <- brexit_polls %>%
  gather(vote, proportion, "remain":"undecided") %>%
  mutate(vote = factor(vote))

head(brexit_long)

brexit_long %>% group_by(vote)

brexit_long %>% ggplot(aes(enddate,proportion,color=vote))+
  geom_point()+geom_smooth(method = "loess",span=0.3)