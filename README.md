# Diabetes Data Analysis Project

## Project Overview
This project analyzes a diabetes data set to explore patient characteristics and outcomes. The goal is to generate descriptive tables and visualizations to summarize key variables, such as BMI and diabetes diagnosis.

## How to Build Report
1. Make sure R and the required packages (`dplyr`, `knitr`, `rmarkdown`) are installed.  
2. From the project root, run:

```bash
make
```

3. The output report will appear in the `output/` folder as an HTML file.

## Code Organization
- **Tables:** `code/table_creation.R` ??? Generates descriptive tables.  
- **Figures:** `code/figure_creation.R` ??? Generates figures and plots.

## Data
The dataset is located in `data/diabetes_dataset.csv`.