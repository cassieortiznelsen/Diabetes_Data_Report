all:
	Rscript -e "rmarkdown::render('Diabetes_Data_Analysis.Rmd', output_dir='output')"
