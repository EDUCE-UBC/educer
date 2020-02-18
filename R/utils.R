#' Setup paths to resources used in learnr tutorials
#'
#' This helper function provides the paths for any resources used in learnr
#' tutorials. During package development, each <tutorial> is located in
#' \code{inst/tutorials/<tutorial>/} and resources in \code{inst/resources/}
#' (relative to the root of the package). After installation, <tutorial> is in
#' \code{tutorials/<tutorial>/} and resources in \code{inst/resources/}
#' (relative to the root of the installed package).
#' \code{shiny::addResourcePath} creates a prefix to be used as filepath to the
#' following resources: images (\code{/images}) and css  files \code{/css}. The
#' default parameters assume the installed package folder structure described
#' above.
#'
#' @param images A string giving the images location relative to installed
#'   package.
#' @param css A string giving the css location relative to installed package.
#'
#' @keywords internal
#' @seealso \code{\link[shiny]{addResourcePath}()}
setup_resources <- function(css    = "resources/css",
                            images = "resources/images") {
  shiny::addResourcePath("images", system.file(images, package = "educer"))
  shiny::addResourcePath("css", system.file(css, package = "educer"))
}

#' Start tutorial in the educer package
#'
#' This wrapper runs learnr tutorials specifically in the educer package.
#'
#' @param name A string giving the name of the educer tutorial
#'
#' @seealso \code{\link[learnr]{run_tutorial}()}
start_tutorial <- function(name) {
  learnr::run_tutorial(name, package = "educer")
}
