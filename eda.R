#categorical distrobution
diamonds %>%
  count(cut)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

#continuous
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

ggplot(data = diamonds, mapping = aes(x = carat, color = cut)) +
  geom_freqpoly(binwidth = 0.1)
