% Generated by roxygen2 (4.0.1): do not edit by hand
\name{add_args}
\alias{add_args}
\title{Add arguments to a function.}
\usage{
add_args(func, ...)
}
\arguments{
\item{func}{the function to which arguments are added.}

\item{...}{function arguments, possibly with default values.}
}
\value{
a new function with added arguments.
}
\description{
This can be used to add arguments to a function, either made with
\code{lambda}, \code{fseq}, or \code{\%,\%}.
}
\examples{
# Build a mean-absolute error function which takes na.rm as argument
 # passed on to `mean`.
 mae <-
  residuals \%,\%
  abs \%,\%
  mean(na.rm = na.rm) \%>\%
  add_args(na.rm = TRUE)

# Try it out.
iris \%>\%
   lm(Sepal.Length ~ ., .) \%>\%
   mae
}

