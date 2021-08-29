#' Set up paths to resources used in learnr tutorials
#'
#' This helper function provides the paths for any resources used in learnr
#' tutorials. During package development, each <tutorial> is located in
#' \code{inst/tutorials/<tutorial>} and resources in \code{inst/resources}
#' (relative to the root of the package). After installation, <tutorial> is in
#' \code{tutorials/<tutorial>} and resources in \code{resources} (relative to
#' the root of the installed package). \code{shiny::addResourcePath} creates a
#' prefix consisting of the name of each directory in \code{resources} and the
#' file path of that directory. For example, the prefix to \code{/images}) is
#' connected to \code{resources/images}, etc.
#'
#' @keywords internal
#'
#' @seealso \code{\link[shiny]{addResourcePath}()}
#'
#' @export
set_up_resources <- function() {
  list.dirs(system.file("resources", package = "educer"),
            recursive = FALSE) |>
    purrr::walk(\(x) shiny::addResourcePath(basename(x), x))
}

#' List tutorials in the educer package
#'
#' This wrapper lists learnr tutorials specifically in the educer package.
#'
#' @seealso \code{\link[learnr]{available_tutorials}()}
#'
#' @export
list_tutorials <- function() {
  message(
    paste0(
      utils::capture.output(learnr::available_tutorials(package = "educer")),
      collapse = "\n"
    ),
    "\n\n",
    "If you are using RStudio version 1.3.1093 or newer, you can find ",
    "all tutorials in the Tutorial tab of the right top pane (in default ",
    "layout). Otherwise, use the <name> on the left-hand side of the colon ",
    "to start a tutorial by entering 'start_tutorial(\"<name>\")' (without ",
    "single quotes) into the Console. For example, use ",
    "'start_tutorial(\"r_and_rstudio_ws\")' to open the \"Introduction to R ",
    "and RStudio\" workshop tutorial."
    )
}

#' Start tutorial in the educer package
#'
#' This wrapper runs learnr tutorials specifically in the educer package.
#'
#' @param name A string giving the name of the educer tutorial.
#'
#' @seealso \code{\link[learnr]{run_tutorial}()}
#'
#' @export
start_tutorial <- function(name) {
  learnr::safe(learnr::run_tutorial(!!name, package = "educer"))
}
