library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)
temp_carbon


 p<-temp_carbon %>% filter(!is.na(temp_anomaly)) %>% ggplot(aes(year,temp_anomaly))+
  geom_line()
 
  p + geom_hline(aes(yintercept = 0), col = "blue")+
    geom_line(aes(y=ocean_anomaly),color="red")+
    geom_line(aes(y=land_anomaly),color="green")
    
 