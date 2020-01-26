set.seed(1989, sample.kind="Rounding") #if you are using R 3.6 or later
library(HistData)
data("GaltonFamilies")

library(Lahman)
bat_02 <- Batting %>% filter(yearID == 2002) %>%
  mutate(pa = AB + BB, singles = (H - X2B - X3B - HR)/pa, bb = BB/pa) %>%
  filter(pa >= 100) %>%
  select(playerID, singles, bb)

library(Lahman)
bat_19 <- Batting %>% filter(yearID %in%1999:2001) %>%
  mutate(pa = AB + BB, singles = (H - X2B - X3B - HR)/pa, bb = BB/pa) %>%
  filter(pa>100) %>%
  group_by(playerID) %>% 
  summarize(mean_singles = mean(singles), mean_bb = mean (bb))
sum(bat_19$mean_singles > 0.2)
sum(bat_19$mean_bb > 0.2)

gat <- inner_join(bat_02,bat_19)
cor(gat$bb, gat$mean_bb
    
    gat %>% ggplot(aes(singles,mean_singles))+ geom_point()
    gat %>% ggplot(aes(bb,mean_bb))+ geom_point()
    
    fit_singles <- lm(singles ~ mean_singles, data = gat)
    fit_singles$coef[2]
    
    
    fit_bb <- lm(bb ~ mean_bb, data = gat)
    fit_bb$coef[2]