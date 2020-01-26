Library(Lahman)
library(broom)
Teams %>% filter(yearID==1971) %>%
  lm(R ~ BB + HR, data  =.) %>%
  tidy() %>%
  filter(term == "BB") %>%
  pull(estimate)

Library(Lahman)
library(broom)
Teams %>% filter(yearID==1971) %>%
  lm(R ~ BB + HR, data  =.) %>%
  tidy() %>%
  filter(term == "HR") %>%
  pull(estimate)