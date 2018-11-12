library(nycflights13)
library(tidyverse)

jan_first <- filter(flights, month == 1, day == 1)

#delayed more than two hours
(delayed_two_hrs <- filter(flights, arr_delay >= 120))

#flew to houston
(to_houston <- filter(flights, dest == "HOU" | dest == "IAH"))

#United, Delta or American
(major_airlines <- filter(flights, carrier == "AA" | carrier == "DL" | carrier == "UA"))

#Departed between midnight and 6am
(redeyes <- filter(flights, dep_time <=600))

#Departed in summer (July, August, and September)
(summer_flights <- filter(flights, month == 7 | month == 8 | month == 9))

#Summer, using between function
(summer_flights_again <- filter(flights, between(month, 7, 9)))

#no departure time
(no_dep_time <- filter(flights, is.na(dep_time)))

#arrange missing first
(missing <- arrange(flights, desc(is.na(dep_time))))


#select
(sm_flights <- select(
  flights,
  starts_with("dep_"),
  starts_with("arr_")
))

vars <- c("year", "month", "day", "dep_delay", "arr_delay")

select(flights, one_of(vars))

#average delay
arrange(summarise(group_by(flights, year, month, day), delay=mean(dep_delay, na.rm = TRUE)), desc(delay))

#pipe that
flights %>%
  group_by(year, month, day) %>%
  summarise(delay=mean(dep_delay, na.rm = TRUE)) %>%
  arrange(desc(delay))



