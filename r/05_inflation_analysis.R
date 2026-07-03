library(tidyverse)
Inflation<- read_csv("clean_inflation_rate.csv")
view(Inflation)

library(ggplot2)
ggplot(Inflation, aes(x=year, y=`inflation_rate`)) +
  geom_line(color = "steelblue", size=1) +
  geom_point(size =2) +
  labs(title = "Nigeria Inflation Rate(2012-2025)",
       x="Year", y= "Inflation Rate (%)") +
  theme_minimal()