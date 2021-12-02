here::i_am("code/make_table.R")

cleaned_mtcars <- readRDS(
	here::here("clean_data", "mtcars_cleaned.rds")
)

cleaned_mtcars$mpg_times_cyl <- cleaned_mtcars$mpg * cleaned_mtcars$cyl
cleaned_mtcars$id <- seq_len(dim(cleaned_mtcars)[1])
data_for_table <- cleaned_mtcars[, c("id", "mpg_times_cyl", "mpg")]

knitr::kable(cleaned_mtcars)

saveRDS(data_for_table, here::here(
	"output", "data_for_table.rds"
))