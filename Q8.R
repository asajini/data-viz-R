library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3)

stars %>% filter(type=="G") %>% arrange(type)

stars %>% filter(!is.na(temp) & !is.na(magnitude) & type=="G") %>% 
  ggplot(aes(temp,magnitude,color=type))+geom_point(size=0.5)