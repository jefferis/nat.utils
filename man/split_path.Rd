% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fsutils.r
\name{split_path}
\alias{split_path}
\title{Split file path into individual components (optionally including separators)}
\usage{
split_path(
  path,
  include.fseps = FALSE,
  omit.duplicate.fseps = FALSE,
  fsep = .Platform$file.sep
)
}
\arguments{
\item{path}{A path with directories separated by \code{fsep}s.}

\item{include.fseps}{Whether to include the separators in the returned 
character vector (default \code{FALSE})}

\item{omit.duplicate.fseps}{Whether to omit duplicate file separators if 
\code{include.fseps=TRUE} (default \code{FALSE}).}

\item{fsep}{The path separator (default to \code{.Platform$file.sep})}
}
\value{
A character vector with one element for each component in the path 
  (including path separators if \code{include.fseps=TRUE}).
}
\description{
Split file path into individual components (optionally including separators)
}
\examples{
split_path("/a/b/c")
split_path("a/b/c")
parts=split_path("/a/b/c", include.fseps=TRUE)
# join parts back up again
paste(parts, collapse = "")
split_path("a/b//c", include.fseps=TRUE, omit.duplicate.fseps=TRUE)
# Windows style
split_path("C:\\\\a\\\\b\\\\c", fsep="\\\\")
}
\seealso{
\code{\link{file.path}}

Other path_utils: 
\code{\link{abs2rel}()},
\code{\link{common_path}()}
}
\concept{path_utils}
