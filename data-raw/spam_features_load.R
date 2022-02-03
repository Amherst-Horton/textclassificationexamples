library(textclassificationexamples)
library(tidyverse)

spam_train <- emails_train |>
  na.omit() |>
  mutate(
    type = as.factor(ifelse(type %in% c("spam"), "spam", "not_spam")),
    all_caps = as.factor(all_caps(subjectline)), 
    has_dollar_sign = as.factor(has_dollar_sign(subjectline)), 
    has_ampersand = as.factor(has_dollar_sign(subjectline)), 
    has_dear = as.factor(has_dear(subjectline)), 
    has_mister = as.factor(has_mister(subjectline)), 
    ends_with_period = as.factor(ends_with_period(subjectline)), 
    multiple_punctuation = as.factor(multiple_punctuation(subjectline)), 
    has_religious = as.factor(has_religious(subjectline)), 
    begins_re = as.factor(begins_re(subjectline))
  ) |>
  rowwise() |>
  mutate(positivity = positivity(subjectline))

spam_test <- emails_test |>
  na.omit() |>
  mutate(
    type = as.factor(ifelse(type %in% c("spam"), "spam", "not_spam")),
    all_caps = as.factor(all_caps(subjectline)), 
    has_dollar_sign = as.factor(has_dollar_sign(subjectline)), 
    has_ampersand = as.factor(has_dollar_sign(subjectline)), 
    has_dear = as.factor(has_dear(subjectline)), 
    has_mister = as.factor(has_mister(subjectline)), 
    ends_with_period = as.factor(ends_with_period(subjectline)), 
    multiple_punctuation = as.factor(multiple_punctuation(subjectline)), 
    has_religious = as.factor(has_religious(subjectline)), 
    begins_re = as.factor(begins_re(subjectline))
  ) |>
  rowwise() |>
  mutate(positivity = positivity(subjectline))

usethis::use_data(spam_train, overwrite = TRUE)
usethis::use_data(spam_test, overwrite = TRUE)
