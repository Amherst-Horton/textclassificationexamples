library(tidyverse)

headlines <- read_csv(here::here("data-raw", "filtered_headlines.csv")) |>
  mutate(title = iconv(title, "latin1", "ASCII//TRANSLIT") |> str_remove("\"")) 

set.seed(2022)

headlines_sample <- headlines |>
  group_by(clickbait) |>
  slice_sample(n = 1000)

headlines_train <- headlines |>
  group_by(clickbait) |>
  slice_sample(prop = 0.8)

headlines_test <- headlines |>
  anti_join(headlines_train, by = "ids")

usethis::use_data(headlines, overwrite = TRUE)
usethis::use_data(headlines_sample, overwrite = TRUE)
usethis::use_data(headlines_train, overwrite = TRUE)
usethis::use_data(headlines_test, overwrite = TRUE)
