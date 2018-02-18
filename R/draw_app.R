#' open shiny app
#'
#' @export
draw_app <- function() {
  appDir <- system.file("app", package = "nicetable")
  if (appDir == "") {
    stop("Could not find . Try re-installing `nicetable`.", call. = FALSE)
  }
  shiny::runApp(appDir, display.mode = "normal")
}
