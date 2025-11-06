all:
	Rscript -e "rmarkdown::render('report/Diabetes_Data_Analysis.Rmd', output_dir='output')"
