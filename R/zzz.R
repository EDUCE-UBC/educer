# .onAttach <- function(libname, pkgname) {
#   packageStartupMessage(
#     "Welcome to the educer package.\n\n",
#     paste0(capture.output(learnr::available_tutorials(package = pkgname)),
#            collapse = "\n"), "\n\n",
#     "Use the <name> on the left-hand side of the colon to start a tutorial ",
#     "by\n",
#     "entering the following command into the console:\n\n",
#     "start_tutorial(\"<name>\")\n\n",
#     "For example, use\n\n",
#     "start_tutorial(\"r_and_rstudio_basic\")\n\n",
#     "to start the \"Introduction to R and RStudio\" tutorial."
#   )
# }
