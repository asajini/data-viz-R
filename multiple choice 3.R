library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3)


stars%>% filter(!is.na(temp)) %>% ggplot(aes(temp))+geom_histogram()