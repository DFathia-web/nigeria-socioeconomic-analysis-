# nigeria-socioeconomic-analysis-
# Is Nigeria Improving? A Socioeconomic Indicators Analysis (2012–2025/26)

Analysis of Nigeria's key economic and security indicators over the past decade-plus — debt, inflation, naira value, unemployment rate, electricity rate, poverty rate, violence rate and conflict trends — to see whether things have actually improved. Built with Excel (cleaning), R/tidyverse + ggplot2 (analysis), and Power BI (dashboard).

## Data Sources
- [World Bank](https://data.worldbank.org/) — macroeconomic indicators
- [DMO Nigeria](https://www.dmo.gov.ng/) — public debt
- [ACLED](https://acleddata.com/) — conflict/security events (cleaned/aggregated only, per ACLED's usage terms)
- [Investing.com](https://www.investing.com/) — exchange rate data

## Structure
```
├── data/       # Cleaned datasets (raw sources linked above)
├── excel/      # Cleaning & initial exploration
├── r/          # Analysis scripts
└── README.md
```

## Key Findings
- Electricity access improved — the electricity rate rose from roughly 53.7% in 2012 to about 60.5% by 2025, with the sharpest gains coming after 2020.
- Unemployment improved over the period — despite rising to a peak of ~6.1% around 2020/2021, it fell sharply afterward, ending at roughly 3% by 2025, below its 2012 starting point of ~3.7%.
- Debt worsened sharply — total debt stayed relatively flat through the 2010s but rose steeply from around 2020 onward, roughly quadrupling by 2025.

## Reproduce
1. `git clone https://github.com/DFathia-web/[repo-name].git`
2. Run scripts in `r/` in order

## Author
Damilola Fathia — [GitHub](https://github.com/DFathia-web) • fathiaawonian1903@gmail.com
