% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unstash.R
\name{unstash}
\alias{unstash}
\title{Unstash an object}
\usage{
unstash(var, verbose = TRUE)
}
\arguments{
\item{var}{The name or a vector of names of objects to remove.}

\item{verbose}{Whether to print action statements (default TRUE).}
}
\value{
Returns \code{NULL} (invisibly).
}
\description{
Remove an object from the stash.
}
\examples{
\donttest{
stash("x", {
  x <- 1
})

unstash("x")

#' # Remove directory for this example - do not do in real use.
unlink(".mustashe", recursive = TRUE)
}

}
