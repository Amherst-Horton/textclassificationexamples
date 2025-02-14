% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spam_functions.R
\name{ends_with_period}
\alias{ends_with_period}
\title{Ends with a Period}
\usage{
ends_with_period(text)
}
\arguments{
\item{text}{string/ email subject line}
}
\description{
This function takes in any string and returns a boolean indicating
whether or not it ends with a period. This function
is intended for use on any of the email MEA datasets.
}
\examples{
\dontrun{
emails_mister <- emails \%>\% ends_with_period(text = subjectline))
}

}
