% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_here.R
\name{dont_use_here}
\alias{dont_use_here}
\title{Stop using the 'here' package when writing stashes to file}
\usage{
dont_use_here(silent = FALSE)
}
\arguments{
\item{silent}{A logical to silence the message from the function. (default
\code{FALSE})}
}
\value{
Returns \code{NULL} (invisibly).
}
\description{
Stop using the \code{here::here()} function from the
\href{https://here.r-lib.org}{'here'} package to create the file paths for
stashed objects.
}
\examples{
dont_use_here()
}
