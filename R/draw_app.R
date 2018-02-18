#' open shiny app
#'
#' @export
draw_app <- function() {
  appDir <- system.file("app", package = "rusk")
  if (appDir == "") {
    stop("Could not find . Try re-installing `rusk`.", call. = FALSE)
  }
  shiny::runApp(appDir, display.mode = "normal")
}
