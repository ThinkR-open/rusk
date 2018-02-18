library(magick)

library(ggplot2)
img <- image_graph(400, 400, res = 96)
seq(2,100,by = 1) %>% purrr::map(~draw(table=9,modulo = .x))

dev.off()
animation <- image_animate(img, fps = 10)
print(animation)


