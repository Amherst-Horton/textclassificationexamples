#' Headlines
#'
#' This data comes from Chakraborty et. al., which combines headlines from
#' a variety of news and clickbait sources. Much of these headlines contain
#' subject matter innapropriate for classroom use. Given the volume of headlines
#' containing such language (especially for clickbait == TRUE), this filtering
#' might not catch all problematic headlines. User discretion is advised.
#'
#' @docType data
#' @format A data frame with 22949 rows and 3 variables:
#' \describe{
#'   \item{title}{character Article headline}
#'   \item{clickbait}{logical TRUE if the article is clickbait, and FALSE if not}
#'   \item{ids}{integer Row number}
#' }
#' @source \url{https://github.com/bhargaviparanjape/clickbait}
"headlines"

#' Headlines Train
#'
#' This dataset is a random sample of approximately 80\% of the observations
#' in "headlines", stratified by .
#'
#' @docType data
#' @format A data frame with 18360 rows and 3 variables:
#' \describe{
#'   \item{title}{character Article headline}
#'   \item{clickbait}{logical TRUE if the article is clickbait, and FALSE if not}
#'   \item{ids}{integer Original row number}
#' }
#' @source \url{https://github.com/bhargaviparanjape/clickbait}
"headlines_train"

#' Headlines Test
#'
#' This dataset is the remaining 20\% of the observations
#' in "headlines" not found in the training set.
#'
#' @docType data
#' @format A data frame with 4589 rows and 3 variables:
#' \describe{
#'   \item{title}{character Article headline}
#'   \item{clickbait}{logical TRUE if the article is clickbait, and FALSE if not}
#'   \item{ids}{integer Original row number}
#' }
#' @source \url{https://github.com/bhargaviparanjape/clickbait}
"headlines_test"

#' Sample Headlines
#'
#' This dataset is a random sample of 1000 clickbait article headlines and
#' 1000 news article headlines from "headlines". This was created for use in
#' a guided activity using a data access platform called CODAP. If students
#' are interested in exploring how attributes differ across clickbait and news
#' headlines through use of 2 X 2 count tables, using this set will allow for
#' easier interpretation.
#'
#' @docType data
#' @format A data frame with 2000 rows and 3 variables:
#' \describe{
#'   \item{title}{character Article headline}
#'   \item{clickbait}{logical TRUE if the article is clickbait, and FALSE if not}
#'   \item{ids}{integer Original row number}
#' }
#' @source \url{https://github.com/bhargaviparanjape/clickbait}
"headlines_sample"