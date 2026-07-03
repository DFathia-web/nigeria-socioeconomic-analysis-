library(tidyverse)
Unemployment<- read_csv("clean_unemployment_rate.csv")
View(Unemployment)

library(ggplot2)

ggplot(Unemployment, aes(x= year, y=`unemployment rate`)) +
  geom_line(color = "steelblue", size = 1) +
  geom_point(size = 2) +
  labs(title = "Nigeria Unemployment Rate (2012-2025)",
       x = "Year", y= "Unemployment Rate (%)") +
  theme_minimal()