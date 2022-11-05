# Building Shiny Apps
[![deploy workshop](https://github.com/inSilecoInc/cws-shiny-workshop/actions/workflows/deploy.yml/badge.svg)](https://github.com/inSilecoInc/cws-shiny-workshop/actions/workflows/deploy.yml)


## Installation 

To render the slides, `iseWorkshops` must be installed. 

```{R}
install.packages("remotes")
remotes::install_github("inSilecoInc/iseWorkshops")
```


## Outline (2*3h)

### Theory (`01_shiny_intro` a relire; 1h30, 45-45 KC) 

1. What is shiny?
2. What is reactive programming?
3. How does it work?
4. Front-end versus Backend (UI versus server)


### V1: Minimal shiny app (`02_shiny_mini` a revoir, 1h30, 45-45, DB) 

- css/html
- functions (output/render)
- prototype -> show flows (what triggers changes)
- show and interact with one table 
- debugger shiny app (oublier une reactiv var)?

* **output**: 
  * minimal code for V1 
  * table + filtrer (dropdown) (selection on the left, ouput on the right)
  * use only one database: bird atlas (bird open canada)


### V2: Table + Spatial app (`02_shiny_spatial` a refaire, 1h30, 45-45, SV) 

- show flows (what triggers changes)
- merge, crop and take what's in the selected area
- filter data (spatial filter)

* **output**: 
  * minimal code for V2
  * tab2: add a map + spatial filter (species)


### V3: Table + Spatial app + Synthesis (`03_shiny_final` a faire SV) 

- use data obtained form spatial filter for a synthesis (data visualisation) 
- deploy the app on a GH repo and on shiny servers.

* **output**: 
  * minimal code for V3
  * host sur Shiny server (explain how to selfhost)?


### create a different repo for the shiny apps