library(tidyverse)
Unemployment<- read_csv("clean_unemployment_rate.csv")
View(Unemployment)
Poverty<- read_csv("clean_poverty_rate.csv")
view(Poverty)
Inflation<- read_csv("clean_inflation_rate.csv")
view(Inflation)
Debt<- read_csv("clean_debt_rate.csv")
view(Debt)
Electricity<- read_csv("clean_electricity_rate.csv")
view(Electricity)
Violence<- read_csv("clean_violence_rate.csv")
view(Violence)
Naira_value<- read_csv("clean_naira_value.csv")
view(Naira_value)

Nigeria_data <- Unemployment %>%
  full_join(Poverty, by = "year") %>%
  full_join(Electricity, by = "year") %>%
  full_join(Inflation, by = "year") %>%
  full_join(Violence, by = "year") %>%
  full_join(Debt, by = "year") %>%
  full_join(Naira_value, by ="year") %>%
  arrange (year)
view(Nigeria_data)

library(ggplot2)
colnames(Nigeria_data)
ggplot(Nigeria_data, aes(x= year, y=`unemployment rate`)) +
  geom_line(color = "steelblue", size = 1) +
  geom_point(size = 2) +
  labs(title = "Nigeria Unemployment Rate (2012-2025)",
       x = "Year", y= "Unemployment Rate (%)") +
  theme_minimal()
ggplot(Nigeria_data, aes(x= year, y=`poverty_rate`)) +
  geom_line(color = "steelblue", size = 1) +
  geom_point(size = 2) +
  labs(title = "Nigeria Poverty Rate (2012-2025)",
       x = "Year", y= "Poverty Rate (%)") +
  theme_minimal()
ggplot(Nigeria_data, aes(x= year, y=`electricity_rate`)) +
  geom_line(color = "orange", size = 1) +
  geom_point(size = 2) +
  labs(title = "Nigeria Electricity Rate (2012-2025)",
       x = "Year", y= "Electricity Rate (%)") +
  theme_minimal()
ggplot(Nigeria_data, aes(x=year, y=`inflation_rate`)) +
  geom_line(color = "steelblue", size=1) +
  geom_point(size =2) +
  labs(title = "Nigeria Inflation Rate(2012-2025)",
       x="Year", y= "Inflation Rate (%)") +
  theme_minimal()
ggplot(Nigeria_data, aes(x=year, y=`violence_events`)) +
  geom_line(color = "red", size=1) +
  geom_point(size= 2) +
  labs(title = "Nigeria Violence Events(2012-2025)",
       x="Year", y= "Number of Violence Events") +
  theme_minimal()
ggplot(Nigeria_data, aes(x=year, y=`fatalities`)) +
  geom_line(color = "firebrick", size=1) +
  geom_point(size =2) +
  labs(title = "Nigeria Fatalities Rate(2012-2025)",
       x="Year", y= "Fatalities") +
  theme_minimal()
ggplot(Nigeria_data, aes(x=year, y=`total_debt_rate(Naira)`)) +
  geom_line(color = "steelblue", size=1) +
  geom_point(size= 2) +
  labs(title = "Nigeria Total Debt(2012-2025)",
       x="Year", y= "Total Debt (Naira)") +
  theme_minimal()
ggplot(Nigeria_data, aes(x=year, y=`average_naira_value`)) +
  geom_line(color = "green", size=1) +
  geom_point(size= 2) +
  labs(title = "Nigeria Currency value(2012-2025)",
       x="Year", y= "Naira Value") +
  theme_minimal()

colnames(Nigeria_data)
model_unemployment <-lm(`unemployment rate` ~ year, data = Nigeria_data)
summary(model_unemployment)

model_poverty <-lm(`poverty_rate` ~ year, data = Nigeria_data)
summary(model_poverty)

model_electricity <-lm(`electricity_rate` ~ year, data = Nigeria_data)
summary(model_electricity)

model_inflation <-lm(`inflation_rate` ~ year, data = Nigeria_data)
summary(model_inflation)

model_violence <-lm(`violence_events` ~ year, data = Nigeria_data)
summary(model_violence)

model_fatalities <-lm(`fatalities` ~ year, data = Nigeria_data)
summary(model_fatalities)

model_debt <-lm(`total_debt_rate(Naira)` ~ year, data = Nigeria_data)
summary(model_debt)

model_Naira_value <-lm(`avera ge_naira_value` ~ year, data = Nigeria_data)
summary(model_Naira_value)



