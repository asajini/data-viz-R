library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)

temp_carbon  %>% filter(!is.na(carbon_emissions)) %>%
  ggplot(aes(year,carbon_emissions)) +
  geom_line()