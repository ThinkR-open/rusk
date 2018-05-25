#' @import dplyr
gen_points <- function(table=2,modulo=10,r=1){

circleFun(c(0, 0), r, npoints = modulo) %>%
    mutate(depart = seq_len(nrow(.)),
           destination = (depart * table) %% nrow(.),
           destination = case_when(destination == 0 ~ as.numeric(nrow(.)),
                                   TRUE ~ destination)
    )


}
