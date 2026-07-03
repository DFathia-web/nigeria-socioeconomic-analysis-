library(tidyverse)
Violence<- read_csv("clean_violence_rate.csv")
view(Violence)

library(ggplot2)
ggplot(Violence, aes(x=year, y=`violence_events`)) +
  geom_line(color = "red", size=1) +
  geom_point(size= 2) +
  labs(title = "Nigeria Violence Events(2012-2025)",
       x="Year", y= "Number of Violence Events") +
  theme_minimal()

ggplot(Violence, aes(x=year, y=`fatalities`)) +
  geom_line(color = "firebrick", size=1) +
  geom_point(size =2) +
  labs(title = "Nigeria Fatalities Rate(2012-2025)",
       x="Year", y= "Fatalities") +
  theme_minimal()