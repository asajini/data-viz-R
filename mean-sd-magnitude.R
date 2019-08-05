library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3)
stars %>% summarise(avg=mean(magnitude), standard_deviation = sd(magnitude))



