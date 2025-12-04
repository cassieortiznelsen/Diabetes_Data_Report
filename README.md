Welcome to my Diabetes Data Analysis Project!


Project Overview

This project looks at a diabetes dataset to explore patient characteristics and outcomes with graphs



Build the Report

(Make sure R is installed with dplyr, knitr, and rmarkdown)

From the project root, run:

make run


The report will appear in the report/ folder



Reproducibility

We use renv to make the project reproducible!

Restore the environment with:

make install


Then build the report with:

make run

Docker

You can also build and run the project using Docker to avoid installing R or packages locally!



What’s Included

The renv/ folder has project libraries
renv.lock tracks package versions
The Makefile helps restore packages and build the report
The R Markdown file has all code and figures

Code and Data

Tables: code/table_creation.R
Figures: code/figure_creation.R
Dataset: data/diabetes_dataset.csv