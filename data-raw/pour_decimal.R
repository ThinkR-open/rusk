truc  <-  gen_points(table=table,modulo=modulo)

truc %>%
  gen_droites()

circleFun(c(0, 0), 1, npoints = 100) %>% mutate(plop=seq_len(nrow(.))/10)

# est ce que en faire 100 et diviser par 10, ca revient au meme ?
rbind(circleFun(c(0, 0), 1, npoints = 100)[20,],
circleFun(c(0, 0), 1, npoints = 100)[25,],
circleFun(c(0, 0), 1, npoints = 100)[30,])


draw(table = 2,modulo = 1000)
draw(table = 42,modulo = 500)
draw(table = 21,modulo = 500)
draw(table = 11,modulo = 500)
draw(table = 10,modulo = 500)



circleFun(c(0, 0), 1, npoints = 99)
dat <- circleFun(c(0, 0), 1, npoints = 1000) %>% round(2) %>% mutate(pos = seq_len(nrow(.)))
dat2 <- circleFun(c(0, 0), 1, npoints = 10) %>% round(2)%>% mutate(pos = seq_len(nrow(.)))
info <- dat %>%
  full_join(dat2,by=c("x","y")) %>%
  mutate(pos.y2 = round(na.approx(pos.y),2)) %>%
  distinct(pos.y2,.keep_all = TRUE) %>%
  select(x,y,depart = pos.y2)
