#' @import ggplot2
#' @import reshape2
#' @import tidyr
gen_droites <- function(points){

  points %>%
    left_join(points,by=c("destination" = "depart"),suffix=c("_depart","_destination")) %>%
    filter(depart_depart != nrow(.)) %>%
    select(x_depart,y_depart,x_destination,y_destination) %>%
    mutate(group = seq_len(nrow(.)),
           group =as.factor(group)
    ) %>% melt(id="group") %>%
    separate(variable,into=c("coord","type"),sep="_") %>%
    dcast(group +type ~ coord,value.var = "value")

}
