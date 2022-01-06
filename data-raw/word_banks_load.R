library(tidyverse)

common <- read_csv(here::here("data-raw", "common_phrases.csv")) |>
  select(-V1)

exaggerated <- read_csv(here::here("data-raw", "exaggerated_phrases.csv")) |>
  select(-V1)

contractions <- read_csv(here::here("data-raw", "contractions.csv")) |>
  select(-V1)

question <- read_csv(here::here("data-raw", "question_words.csv")) |>
  select(-V1)

usethis::use_data(common, overwrite = TRUE)
usethis::use_data(exaggerated, overwrite = TRUE)
usethis::use_data(contractions, overwrite = TRUE)
usethis::use_data(question, overwrite = TRUE)
