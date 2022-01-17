library(textclassificationexamples)
library(tidyverse)

clickbait_train <- headlines_train |>
  na.omit() |>
  mutate(
    clickbait = as.factor(clickbait),
    common = as.factor(has_common_phrase(title)),
    exaggerated = as.factor(has_exaggerated_phrase(title)), 
    num_contractions = num_contractions(title),
    num_words = num_words(title),
    num_pronouns = num_pronouns(title),
    starts_num = as.factor(starts_with_num(title)), 
    question = as.factor(has_question_word(title))
  ) |>
  rowwise() |>
  mutate(positivity = positivity(title), 
         num_stop_words = num_stop_words(title))

clickbait_test <- headlines_test |>
  na.omit() |>
  mutate(
    clickbait = as.factor(clickbait),
    common = as.factor(has_common_phrase(title)),
    exaggerated = as.factor(has_exaggerated_phrase(title)), 
    num_contractions = num_contractions(title),
    num_words = num_words(title),
    num_pronouns = num_pronouns(title),
    starts_num = as.factor(starts_with_num(title)), 
    question = as.factor(has_question_word(title))
  ) |>
  mutate(positivity = positivity(title), 
         num_stop_words = num_stop_words(title))

usethis::use_data(clickbait_train, overwrite = TRUE)
usethis::use_data(clickbait_test, overwrite = TRUE)
