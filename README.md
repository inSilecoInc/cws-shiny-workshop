# Building Shiny Apps
[![deploy workshop](https://github.com/inSilecoInc/cws-shiny-workshop/actions/workflows/deploy.yml/badge.svg)](https://github.com/inSilecoInc/cws-shiny-workshop/actions/workflows/deploy.yml)


## Workshop outline

* [Introduction](_01_shiny_intro.html) ~1h30min
  * general introduction
  * reactive programming 
* [Minimal shiny](_02_shiny_mini.html) ~2h
  * creating your first minimal application 
  * practice
* [Shiny spatial](_03_shiny_spatial.html) ~3h
  * creating a more complex shiny app with spatial operations
  * more practice
* [Shiny in production](_04_shiny_in_prod.html) ~15min
  * an overview of advanced topics


## Installation 

If you are interested, you can re-build the slides, to do so, you need to
1. clone this repository,
2. open R (or RStudio),
3. set the working repository to the newly cloned repository,
4. use the following code


```{R}
install.packages("remotes")
remotes::install_deps()
rmarkdown::render("cws_shiny_workshop.Rmd", "all")
```


