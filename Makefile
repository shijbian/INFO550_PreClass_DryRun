report.html: output/data_for_table.rds report.Rmd
	Rscript -e "rmarkdown::render('report.Rmd')"
		
# keep only first 5 rows of the data
clean_data/mtcars_cleaned.rds: code/clean_data.R
	Rscript code/clean_data.R

# Data needed for table 1
output/data_for_table.rds: clean_data/mtcars_cleaned.rds code/make_table.R
	Rscript code/make_table.R

