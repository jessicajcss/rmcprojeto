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

