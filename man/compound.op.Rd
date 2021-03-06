% Generated by roxygen2 (4.0.1): do not edit by hand
\name{\%<>\%}
\alias{\%<>\%}
\title{Compound assignment pipe operator}
\usage{
lhs \%<>\% rhs
}
\arguments{
\item{lhs}{a symbol or expression which may serve as left-hand
side for \code{`<-`}.}

\item{rhs}{a function/call/expression/chain.}
}
\value{
No return value. Works by assigning the result.
}
\description{
Use to overwrite/mask the left-hand side with the result of
piping it forward into the right-hand side, which itself may be a chain.
}
\examples{
x <- 1:10

x \%<>\% replace(1:2, 0)
x \%<>\% sqrt \%T>\% plot

some.data <- iris
colnames(some.data) \%<>\% paste0("!")
some.data[, 1] \%<>\% multiply_by(2)
}

