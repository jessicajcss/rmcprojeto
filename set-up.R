## References
#https://hugo-apero-docs.netlify.app/
#https://iyo-rstudio-global.netlify.app/
 
## Repo link
#https://github.com/jessicajcss/rmcprojeto.git


install.packages("blogdown")

library(blogdown)

blogdown::install_hugo()
blogdown::hugo_version()

new_site(theme = "hugo-apero/hugo-apero", 
         format = "toml",
         sample = FALSE,
         empty_dirs = TRUE)

blogdown::check_config()

blogdown::check_site()

blogdown::check_netlify()

blogdown::check_hugo()

blogdown::serve_site()

blogdown::stop_server()

blogdown::build_site()








# for plotting
library(leaflet)
library(leaflet.extras)
m = leaflet() %>% addTiles()
m  # a map with the default OSM tile layer
m = m %>% setView(-49.3, -25.35, zoom = 10)
m

# Save the map as an HTML widget 
library(htmlwidgets) 
saveWidget(m, file = "areaestudo.html") 



tiff("./output/2022-paper_sources/Figures/scatterplot_AECE.tiff", units = "in", 
     width = 10, height = 3.5, res = 350)
AECE
dev.off()

m %>% addPopups(-93.65, 42.0285, 'Here is the <b>Department of Statistics</b>, ISU')




