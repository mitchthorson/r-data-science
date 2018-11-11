library("tidyverse")

ggplot(data = diamonds) +
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

?stat_summary
?geom_pointrange


ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) +
  geom_col(mapping = aes(x = cut, y = depth))


ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_point(alpha=0.5, color="#009BFF", size=3)

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_point(position="jitter", alpha=0.5, color="#009BFF", size=3)

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_jitter(alpha=0.5, color="#009BFF", size=3)

?geom_jitter

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_count(color="#009BFF", size=3)

?geom_count
?geom_boxplot

ggplot(data = mpg, mapping = aes(x = class, y = hwy, color = class)) + 
  geom_boxplot()

#basic syntax
seq(1, 10)

x <- "hello world"
y <- seq(1, 10, length.out = 5)
