.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "Welcome to the educer package.\n",
    "\n",
    "If you are using RStudio version 1.3.1093 or newer, you can find ",
    "all tutorials in the Tutorial tab of the right top pane (in the default ",
    "layout). Otherwise, get a list of educer tutorials by entering ",
    "'list_tutorials()' (without single quotes) into the Console.")
}
