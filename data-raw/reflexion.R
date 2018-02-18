library(dplyr)
circleFun <- function(center = c(0,0),r = 1, npoints = 100){
  tt <- seq(0,2*pi,length.out = npoints)
  xx <- center[1] + r * cos(tt)
  yy <- center[2] + r * sin(tt)
  data.frame(x = xx, y = yy)
}

dat <- circleFun(c(0,0),1,npoints = 10)


# ggplot(dat,aes(x,y)) + geom_path()+

  # dat$depart <- seq_len(nrow(dat))
  # dat$destination <- dat$depart * 2



  dat2 <- circleFun(c(0,0),1,npoints = 10) %>% mutate(depart = seq_len(nrow(.)),
                        destination = (depart * 2) %% nrow(.)       ) %>%
    mutate(destination = case_when(
      destination == 0 ~ as.numeric(nrow(.)),
      TRUE ~ destination
    ))




droites <- dat2 %>%
  left_join(dat2,by=c("destination" = "depart"),suffix=c("_depart","_destination")) %>%
    filter(depart != nrow(dat)) %>%
  select(x_depart,y_depart,x_destination,y_destination)

droites_metl <- droites %>%
  mutate(group = seq_len(nrow(.)),
         group =as.factor(group)
         ) %>% melt() %>%
  separate(variable,into=c("coord","type"),sep="_") %>%
  dcast(group +type ~ coord,value.var = "value")


library(ggplot2)
ggplot() +
  geom_circle(aes(x0=0, y0=0, r=1))+
  geom_line(data=droites_metl, aes(x, y, group = group)) +
  coord_fixed()

# voir avec PATH

draw(table=2,modulo=10)
