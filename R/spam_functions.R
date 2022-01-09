#' All Caps
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not it is in all caps. This function is intended for use
#' on any of the email MEA datasets.
#'
#' @param text string/ email subject line
#'
#' @importFrom stringr str_detect
#'
#' @examples
#' \dontrun{
#' emails_caps <- emails %>%
#'    mutate(all_caps = all_caps(text = subjectline))
#' }
#'
#' @export

all_caps <- function(text) {
  !str_detect(text, "[a-z]")
}

#' Dollar Sign
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not there is a dollar sign. This function is intended for use
#' on any of the email MEA datasets.
#'
#' @param text string/ email subject line
#'
#' @importFrom stringr str_detect
#' 
#' @examples
#' \dontrun{
#' emails_dollar <- emails %>%
#'    mutate(has_dollar_sign = has_dollar_sign(text = subjectline))
#' }
#'
#' @export

has_dollar_sign <- function(text) {
  str_detect(text, "\\$")
}

#' Dear
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not the word "dear" appears within it. This function is
#' intended for use on any of the email MEA datasets.
#'
#' @param text string/ email subject line
#'
#' @importFrom stringr str_detect
#' 
#' @examples
#' \dontrun{
#' emails_dear <- emails %>%
#'    mutate(has_dear = has_dear(text = subjectline))
#' }
#'
#' @export

has_dear <- function(text) {
  str_detect(text, "dear|Dear")
}

#' Mister
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not the word "Mister" or "Mr" appears within it. This function
#' is intended for use on any of the email MEA datasets.
#'
#' @param text string/ email subject line
#'
#' @importFrom stringr str_detect
#' 
#' @examples
#' \dontrun{
#' emails_mister <- emails %>%
#'    mutate(has_mister = has_mister(text = subjectline))
#' }
#'
#' @export

has_mister <- function(text) {
  str_detect(text, "Mr|Mister")
}

#' Multiple Punctuation
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not multiple punctuation marks are present. This function is
#' intended for use on any of the email MEA datasets.
#'
#' @param text string/ email subject line
#'
#' @importFrom stringr str_detect
#' 
#' @examples
#' \dontrun{
#' emails_punctuation <- emails %>%
#'    mutate(multiple_punctuation =
#'           multiple_punctuation(text = subjectline))
#' }
#'
#' @export

multiple_punctuation <- function(text) {
  str_detect(text, "!!!!")
}

#' Religious Subject Matter
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not religious words are present. This function is
#' intended for use on any of the email MEA datasets.
#'
#' @param text string/ email subject line
#'
#' @importFrom stringr str_detect
#' 
#' @examples
#' \dontrun{
#' emails_religious <- emails %>%
#'    mutate(has_religious = has_religious(text = subjectline))
#' }
#'
#' @export

has_religious <- function(text) {
  str_detect(text, "lord|Lord|god|God|Blessing|blessing")
}