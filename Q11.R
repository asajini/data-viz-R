library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)

historic_co2 %>% ggplot(aes(year,co2,color=source)) + geom_line()