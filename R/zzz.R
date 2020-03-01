.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Welcome to the educer package.\n")
  packageStartupMessage(educer::list_tutorials())
}
