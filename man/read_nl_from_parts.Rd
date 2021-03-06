% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extdata.R
\name{read_nl_from_parts}
\alias{read_nl_from_parts}
\title{Make a neuronlist object from two separate files}
\usage{
read_nl_from_parts(datapath, dfpath = NULL, package = NULL, ...)
}
\arguments{
\item{datapath}{Path to the data object}

\item{dfpath}{Path to the data.frame object (constructed from \code{datapath}
when \code{NULL}, see details)}

\item{package}{Character vector naming a package whose extdata directory will
be sought (with \code{\link{find_extdata}}) and prepended to the two input
paths.}

\item{...}{Additional arguments passd to \code{\link{find_extdata}}}
}
\value{
a \code{neuronlist} object
}
\description{
Make a neuronlist object from two separate files
}
\details{
It is expected that you will use this in an R source file within the
  data folder of a package. See \bold{Examples} for more information.

  If \code{dfpath} is missing, it will be inferred from \code{datapath}
  according to the following pattern: \itemize{

  \item \code{myblob.rda} main data file

  \item \code{myblob.df.rda} metdata file

  }
}
\examples{
\dontrun{
# you could use the following in a file
# data/make_data.R
delayedAssign('pns', read_nl_from_parts('pns.rds', package='testlazyneuronlist'))
# based on objects created by
save_nl_in_parts(pns)
# which would make:
# - inst/extdata/pns.rds
# - inst/extdata/pns.df.rds
}
}
\seealso{
Other extdata: 
\code{\link{find_extdata}()},
\code{\link{save_nl_in_parts}()}
}
\concept{extdata}
