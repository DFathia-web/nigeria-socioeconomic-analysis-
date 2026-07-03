library(tidyverse)
Poverty<- read_csv("clean_poverty_rate.csv")
view(Poverty)

library(ggplot2)
ggplot(Poverty, aes(x= year, y=`poverty_rate`)) +
  geom_line(color = "steelblue", size = 1) +
  geom_point(size = 2) +
  labs(title = "Nigeria Poverty Rate (2012-2025)",
       x = "Year", y= "Poverty Rate (%)") +
  theme_minimal()