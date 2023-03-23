#' @import data.table
#' @importFrom magrittr %>%
.onAttach <- function(libname, pkgname) {
  version <- tryCatch(
    utils::packageDescription("norsyss", fields = "Version"),
    warning = function(w){
      1
    }
  )

  packageStartupMessage(paste0(
    "norsyss ",
    version,
    "\n",
    "https://norsyss.github.io/norsyss/"
  ))
}
