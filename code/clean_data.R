here::i_am("code/clean_data.R")

location_of_data <- here::here("raw_data", "mtcars.rds")

mtcars <- readRDS(location_of_data)

cleaned_mtcars <- mtcars[1:5,]

location_of_cleaned_data <- here::here("clean_data", "mtcars_cleaned.rds")

saveRDS(cleaned_mtcars, file = location_of_cleaned_data)