% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter.r
\name{gtable_filter}
\alias{gtable_filter}
\title{Filter cells by name.}
\usage{
gtable_filter(x, pattern, fixed = FALSE, trim = TRUE)
}
\arguments{
\item{x}{a gtable object}

\item{pattern}{character string containing a \link{regular expression}
    (or character string for \code{fixed = TRUE}) to be matched
    in the given character vector.  Coerced by
    \code{\link{as.character}} to a character string if possible.  If a
    character vector of length 2 or more is supplied, the first element
    is used with a warning.  Missing values are allowed except for
    \code{regexpr} and \code{gregexpr}.}

\item{fixed}{logical.  If \code{TRUE}, \code{pattern} is a string to be
    matched as is.  Overrides all conflicting arguments.}

\item{trim}{if \code{TRUE}, \code{\link{gtable_trim}} will be used to trim
off any empty cells.}
}
\description{
Filter cells by name.
}
\examples{
library(grid)
gt <- gtable(unit(rep(5, 3), c("cm")), unit(5, "cm"))
rect <- rectGrob(gp = gpar(fill = "black"))
circ <- circleGrob(gp = gpar(fill = "red"))

gt <- gtable_add_grob(gt, rect, 1, 1, name = "rect")
gt <- gtable_add_grob(gt, circ, 1, 3, name = "circ")

plot(gtable_filter(gt, "rect"))
plot(gtable_filter(gt, "rect", trim = FALSE))
plot(gtable_filter(gt, "circ"))
plot(gtable_filter(gt, "circ", trim = FALSE))
}

