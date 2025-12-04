Welcome to my Diabetes Data Analysis Project!


Project Overview

This project is an analysis of a diabetes dataset intending 
to compare patient outcomes and characteristics using crosstabulations, 
charts, and graphs

To Build the Report:
(Make sure R is installed with dplyr, knitr, and rmarkdown)
From the project root, run:

make run

The report will appear in the report folder

Addressing Reproducibility:
"renv"" is used to make the project reproducible
Restore the environment with:

make install


To Clean-Up use bash:
make clean

Then build the report with:
make run

[To avoid installing R locally and to build/run this project use Docker]

What’s Included

The renv/ folder has project libraries
renv.lock tracks package versions
The Makefile helps restore packages and build the report
The R Markdown file has all code and figures

Code and Data

Tables: code/table_creation.R
Figures: code/figure_creation.R
Dataset: data/diabetes_dataset.csv