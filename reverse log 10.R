library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3)

stars %>% filter(!is.na(temp) & !is.na(magnitude)) %>% 
  ggplot(aes((temp),magnitude))+geom_point(size=0.2)+scale_y_reverse()+
  scale_x_reverse()
