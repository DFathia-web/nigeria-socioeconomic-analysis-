library(tidyverse)
Naira_value<- read_csv("clean_naira_value.csv")
view(Naira_value)

library(ggplot2)
ggplot(Naira_value, aes(x=year, y=`average_naira_value`)) +
  geom_line(color = "green", size=1) +
  geom_point(size= 2) +
  labs(title = "Nigeria Currency value(2012-2025)",
       x="Year", y= "Naira Value") +
  theme_minimal()