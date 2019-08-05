library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)
temp_carbon %>%
  filter(!is.na(temp_anomaly) & year=="1880" & year=="2018") %>%
  select(year,temp_anomaly)

