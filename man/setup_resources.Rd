% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{setup_resources}
\alias{setup_resources}
\title{Setup paths to resources used in learnr tutorials}
\usage{
setup_resources(
  css = "resources/css",
  images = "resources/images",
  scripts = "resources/scripts"
)
}
\arguments{
\item{css}{A string giving the css location relative to installed package.}

\item{images}{A string giving the images location relative to installed
package.}

\item{scripts}{A string giving the scripts location relative to installed
package.}
}
\description{
This helper function provides the paths for any resources used in learnr
tutorials. During package development, each <tutorial> is located in
\code{inst/tutorials/<tutorial>/} and resources in \code{inst/resources/}
(relative to the root of the package). After installation, <tutorial> is in
\code{tutorials/<tutorial>/} and resources in \code{resources/} (relative to
the root of the installed package). \code{shiny::addResourcePath} creates a
prefix to be used as filepath to the following resources: images
(\code{/images}), css  files \code{/css}, and example script files
\code{scripts}. The default parameters assume the installed package folder
structure described above.
}
\seealso{
\code{\link[shiny]{addResourcePath}()}
}
\keyword{internal}
