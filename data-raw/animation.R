library(magick)

library(ggplot2)
img <- image_graph(400, 400, res = 96)
seq(2,3,by = 1) %>% purrr::map(draw,modulo=100)
dev.off()
animation <- image_animate(img, fps = 1)
print(animation)


