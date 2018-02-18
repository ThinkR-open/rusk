
#' Beautiful graphical representation of multiplication tables
#'
#' @param table which muliplication table to plot
#' @param modulo number of points to use
#'
#' @return a ggplot
#' @export
#'
#' @examples
#' draw(table=2,modulo = 50)
#' draw(table=2,modulo = 250)
#' draw(table=10,modulo = 250)
draw <- function(table=2,modulo=10){

  table <- round(table)
  modulo <- round(modulo)

  gen_points(table=table,modulo=modulo) %>%
    gen_droites() %>%
    plot.droites() +#ggthemes::theme_solid()
    ggtitle(paste("table ",table, "modulo ", modulo))+
    theme(line = element_blank(),
          rect = element_rect(fill = NA, size = 12, colour = NA, linetype = 0),
          panel.background = element_rect(fill = NA),
          axis.title.x = element_blank(),
          axis.title.y = element_blank(),
          axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          strip.background = element_blank(),
          complete = TRUE)


}
