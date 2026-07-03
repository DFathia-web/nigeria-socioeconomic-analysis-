library(tidyverse)
colnames(Nigeria_data)
higher_is_better <- c(
  electricity_rate = TRUE,
  average_naira_value = FALSE,
  `unemployment rate` = FALSE,
  poverty_rate = FALSE,
  inflation_rate = FALSE,
  `total_debt_rate(Naira)` = FALSE,
  violence_events = FALSE,
  fatalities = FALSE
)

change_summary<- Nigeria_data %>%
  summarise(across(-year, ~ {
    vals <- na.omit(.x)
    (last(vals) -first(vals)) / first(vals)*100
    }))%>%
  pivot_longer(everything(), names_to = "Indicator", values_to = "PctChange")%>%
  mutate(
    better = higher_is_better[Indicator],
    Outcome = case_when(
      better & PctChange > 0 ~ "Improved",
      better & PctChange <= 0 ~ "Worsened",
      !better & PctChange < 0 ~ "Improved",
      TRUE                 ~ "Worsened"
    )
  )
ggplot(change_summary, aes(x = reorder(Indicator, PctChange), y = PctChange, fill = Outcome)) +
  geom_col() +
  coord_flip() +
  scale_fill_manual(values = c("Improved" = "forestgreen", "Worsened" = "firebrick")) +
  labs(title = "PctChange froom 2012 to 2025", x = NULL, y = "PctChange") +
  theme_minimal()
              