library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3)

stars %>% filter(!is.na(magnitude)) %>% ggplot(aes(magnitude))+geom_density