# Building Shiny Apps
[![deploy workshop](https://github.com/inSilecoInc/cws-shiny-workshop/actions/workflows/deploy.yml/badge.svg)](https://github.com/inSilecoInc/cws-shiny-workshop/actions/workflows/deploy.yml)


## Workshop outline 

The presentation starts [here](http://www.insileco.io/cws-shiny-workshop/#1), for the different parts use the links below:

* [General Introduction](http://www.insileco.io/cws-shiny-workshop/_01_shiny_intro.html) ~30min
* [Reactive Programming](http://www.insileco.io/cws-shiny-workshop/_01_shiny_intro.html#33) ~1h15min
* [Minimal shiny](http://www.insileco.io/cws-shiny-workshop/_02_shiny_mini.html) ~2h
  * creating your first minimal application
  * practice
* [Our Shiny V2](http://www.insileco.io/cws-shiny-workshop/_03_shiny_spatial.html) ~1h30
  * creating a more complex shiny app with spatial operations
  * more practice
* [Shiny in production](http://www.insileco.io/cws-shiny-workshop/_05_shiny_in_prod.html) ~15min
  * an overview of advanced topics
* [Our Shiny V3](http://www.insileco.io/cws-shiny-workshop/_04_shiny_synthesis.html.html) ~2h
  * last practice


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
