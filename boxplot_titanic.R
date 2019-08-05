library(tidyverse)
library(titanic)
library(dplyr)
p<-titanic_train %>% filter(Fare != "0" & Fare>=7 & Fare<=9) %>% ggplot(aes(Survived,Fare,group=Survived))+
  geom_boxplot(alpha=0.10)
p+scale_y_continuous(trans = "log2")+geom_jitter(alpha=0.2)
                         
                         