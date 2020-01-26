set.seed(1989, sample.kind="Rounding") #if you are using R 3.6 or later
library(HistData)
data("GaltonFamilies")

head(GaltonFamilies)
female_heights <- GaltonFamilies%>%    
  filter(gender == "female") %>%    
  group_by(family) %>%    
  sample_n(1) %>%    
  ungroup() %>%    
  select(mother, childHeight) %>%    
  rename(daughter = childHeight)

female_heights

m_d <- mean(female_heights$daughter)
s_d <- sd(female_heights$daughter)
m_m <- mean(female_heights$mother)
s_m <- sd(female_heights$mother)

c_md <- cor(female_heights$mother,female_heights$daughter)


## slope
slop <- c_md * (s_d/s_m)
## intercept
inter <- m_d - slop * m_m

slop
inter

varian <- (c_md^2)*100
varian

x = 60
slop * x+inter


