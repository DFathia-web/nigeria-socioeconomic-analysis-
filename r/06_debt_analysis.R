library(tidyverse)
Debt<- read_csv("clean_debt_rate.csv")
view(Debt)

library(ggplot2)
ggplot(Debt, aes(x=year, y=`total_debt_rate(Naira)`)) +
  geom_line(color = "steelblue", size=1) +
  geom_point(size= 2) +
  labs(title = "Nigeria Total Debt(2012-2025)",
       x="Year", y= "Total Debt (Naira)") +
  theme_minimal()