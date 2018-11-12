library(tidyverse)

flights2 <- flights %>%
  select(year:day, hour, origin, dest, tailnum, carrier)

#join to full airline name
flights2 %>%
  select(-origin, -dest) %>%
  left_join(airlines, by="carrier")
