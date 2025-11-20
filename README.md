# Welcome to my Diabetes Data Analysis Project!


Project Overview

Welcome! This project explores a diabetes dataset to examine patient characteristics and outcomes.
The goal is to produce clear tables and visualizations that summarize key variables, such as BMI and diabetes diagnosis. Think of it as a guided tour through the data, highlighting the insights that matter most.

How to Build the Report

1. Ensure R is installed along with the required packages: dplyr, knitr, and rmarkdown.

2. From the project root, run:

make

(This command renders the report. Once finished, the HTML output will appear in the output/ folder.)


Part 2. Reproducibility With renv

To make this project fully reproducible, we use renv. This ensures anyone can recreate 
the same R package environment used for the analysis—no surprises, no missing packages.

1. Restore the R environment

From the project root, run:

make install

(This executes renv::restore(), installing all required packages exactly as recorded in renv.lock.
!! only restores packages, not generating the report !!

2. Build the report

After restoring the environment, run:

make

(This renders the report using the correct packages and saves it to the output/ folder.)


3. What’s included for reproducibility

renv/ folder — contains project-specific libraries

renv.lock — tracks exact package versions

Makefile — provides commands for restoring packages and rendering the report

R Markdown report — all code, tables, and figures in one document

Code Organization

Tables: code/table_creation.R — generates descriptive tables

Figures: code/figure_creation.R — generates plots and visualizations


Data - The dataset is located at data/diabetes_dataset.csv.