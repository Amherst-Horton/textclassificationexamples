library(tidyverse)

spam <- readr::read_csv(here::here("data-raw", "spam.csv")) |>
  mutate(type = "spam") |>
  column_to_rownames(var = "ids")

easy_ham <- readr::read_csv(here::here("data-raw", "easy_ham.csv")) |>
  mutate(type = "easy_ham") |>
  column_to_rownames(var = "ids")

hard_ham <- readr::read_csv(here::here("data-raw", "hard_ham.csv")) |>
  mutate(type = "hard_ham") |>
  column_to_rownames(var = "ids")

emails <- rbind(spam, easy_ham, hard_ham) |>
  rowid_to_column(var = "ids")

set.seed(2022)

emails_train <- emails |>
  group_by(type) |>
  slice_sample(prop = 0.8)

emails_test <- emails |>
  anti_join(emails_train, by = "ids")

usethis::use_data(emails, overwrite = TRUE)
usethis::use_data(emails_train, overwrite = TRUE)
usethis::use_data(emails_test, overwrite = TRUE)