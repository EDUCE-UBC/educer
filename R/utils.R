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
  shiny::addResourcePath("images", here::here(images))
  shiny::addResourcePath("css", here::here(css))
}
