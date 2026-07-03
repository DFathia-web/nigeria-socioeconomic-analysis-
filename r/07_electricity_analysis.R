library(tidyverse)
Electricity<- read_csv("clean_electricity_rate.csv")
view(Electricity)

library(ggplot2)
ggplot(Electricity, aes(x= year, y=`electricity_rate`)) +
  geom_line(color = "orange", size = 1) +
  geom_point(size = 2) +
  labs(title = "Nigeria Electricity Rate (2012-2025)",
       x = "Year", y= "Electricity Rate (%)") +
  theme_minimal()