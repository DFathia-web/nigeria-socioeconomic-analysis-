# R — Statistical Analysis & Visualization

This folder contains the R scripts used to analyze the cleaned data and produce the charts referenced in the main README.

## Indicators covered
- Naira value (exchange rate)
- Unemployment
- Poverty
- Inflation
- Debt
- Electricity
- Violence(Events and Fatalities)

## Files (run in order)
- `01_data_import_cleaning.R` — imports cleaned data from `../excel/`, final formatting checks
- `02_naira_value_analysis.R` — exchange rate trend analysis
- `03_unemployment_analysis.R` — unemployment trend analysis
- `04_poverty_analysis.R` — poverty trend analysis
- `05_inflation_analysis.R` — inflation trend analysis
- `06_debt_analysis.R` — debt trend analysis
- `07_electricity_analysis.R` — electricity access trend analysis
- `08_violence_analysis.R` — conflict and violence trend analysis (ACLED-based)
- `09_visualizations.R` — generates the final charts (ggplot2) used in the dashboard and README

## Packages used
`tidyverse`, `ggplot2`

## Notes
- Scripts assume cleaned data from `../excel/` is already in place
