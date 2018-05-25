#' @importFrom ggforce geom_circle
#' @import ggplot2
plot.droites <- function(lignes,modulo,table,label,...){
  out <- ggplot() +
    geom_circle(aes(x0=0, y0=0, r=1))+
    geom_line(data=lignes, aes(x, y, group = group)) +
    coord_fixed()
 if (label) {
 out <- out +
   geom_text(data = gen_points(table=table,modulo=modulo,r=1.1) %>% slice(-nrow(.)), aes(x, y, label = depart))
}
 out
 }
