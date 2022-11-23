## ----setup, include = FALSE---------------------------------------------------
source("_setup.R")
# knitr::clean_cache(TRUE)
htmltools::tagList(
  xaringanExtra::use_clipboard(
    button_text = "<i class=\"fa fa-clipboard\"></i>",
    success_text = "<i class=\"fa fa-check\" style=\"color: #37abc8\"></i>",
  ),
  rmarkdown::html_dependency_font_awesome()
)
xaringanExtra::use_scribble()


## ---- child = "_01_shiny_intro.Rmd"-------------------------------------------

## ----include = FALSE----------------------------------------------------------
source("_setup.R")
htmltools::tagList(
  xaringanExtra::use_clipboard(
    button_text = "<i class=\"fa fa-clipboard\"></i>",
    success_text = "<i class=\"fa fa-check\" style=\"color: #37abc8\"></i>",
  ),
  rmarkdown::html_dependency_font_awesome()
)
lg_shiny <- function(width) {
  glue("<img src='https://raw.githubusercontent.com/rstudio/shiny/master/man/figures/logo.png'
  alt='Siny logo' width='{width}%' style='vertical-align:middle'>")
}


## ---- non_react---------------------------------------------------------------
a <- 2
b <- 2 * a
cat("a =", a, " | ", "b =", b)


## -----------------------------------------------------------------------------
a <- 3
cat("a =", a, " | ", "b =", b)


## ---- react1------------------------------------------------------------------
# shiny must be installed
library(shiny)
reactiveConsole(TRUE)


## ---- react2------------------------------------------------------------------
a <- reactiveVal(2)
b <- reactive({2 * a()})
cat("a =", a(), " | ", "b =", b())


## -----------------------------------------------------------------------------
a(3)
cat("a =", a(), " | ", "b =", b())


## ----reactVal1----------------------------------------------------------------
a <- reactiveVal(2)
a()
x <- reactiveVal(list(a = 1, mydf = data.frame(a = c(1, 2), b = letters[1:2])))
x()


## ----reactVal2----------------------------------------------------------------
a <- reactiveValues(a = 1, mydf = data.frame(a = c(1, 2), b = letters[1:2]))
a
a$a
a$mydf


## ----reactExp2----------------------------------------------------------------
a <- reactiveVal(2)
a()
b <- reactive({2*a()})
b()


## ----reactExp3----------------------------------------------------------------
a(4)
b()


## ----reactExp4----------------------------------------------------------------
a <- reactiveVal(2)
b <- reactive({2 * a()})
a2 <- reactiveVal(runif(1))
# I avoid using `c` as name variable purposely
d <- reactive({
  print("executing reactive")
  b() + a2()
}) 
d()
a(3)
d()


## ----reactExp5----------------------------------------------------------------
observe(d())
a(1)
a(2)
a2(1)


## ---- include = FALSE---------------------------------------------------------
reactiveConsole(FALSE)



## ---- child = "_02_shiny_mini.Rmd"--------------------------------------------

## ----include = FALSE----------------------------------------------------------
source("_setup.R")


## ---- eval = FALSE------------------------------------------------------------
## # Global variables can go here
## n <- 200
## 
## # Define the UI
## ui <- bootstrapPage(
##   numericInput('n', 'Number of obs', n),
##   plotOutput('plot')
## )
## 
## # Define the server code
## server <- function(input, output) {
##   output$plot <- renderPlot({
##     hist(runif(input$n))
##   })
## }
## 
## # Return a Shiny app object
## shinyApp(ui = ui, server = server)
## 


## ---- eval = FALSE------------------------------------------------------------
## ui <- bootstrapPage(
##   numericInput('n', 'Number of obs', n),
##   plotOutput('plot')
## )


## ---- eval = FALSE------------------------------------------------------------
## server <- function(input, output) {
##   output$plot <- renderPlot({
##     hist(runif(input$n))
##   })
## }


## ---- eval = FALSE------------------------------------------------------------
## shinyApp(ui = ui, server = server)


## ---- eval = FALSE------------------------------------------------------------
## shiny::runApp("app.R")


## ---- eval = FALSE------------------------------------------------------------
## shiny::runApp("app.R")


## ---- eval = FALSE------------------------------------------------------------
## f <- function(x) g(x)
## g <- function(x) h(x)
## h <- function(x) x * 2
## f("a")
## #> Error in x * 2: non-numeric argument to binary operator


## ---- eval = FALSE------------------------------------------------------------
## traceback()
## #> 3: h(x)
## #> 2: g(x)
## #> 1: f("a")


## ---- eval = FALSE------------------------------------------------------------
## server <- function(input, output, session) {
##   selected <- reactive({
##     browser()
##     subset(sales, TERRITORY %in% input$territory)
##   })
## }


## ---- eval = FALSE------------------------------------------------------------
## # generate bins based on input$bins from ui.R
## x    <- faithful[, 2]
## bins <- seq(min(x), max(x), length.out = input$bins + 1)
## message(glue::glue("updating histogram with {length(bins)} bins"))


## ---- eval = FALSE------------------------------------------------------------
## library(shiny)
## source("setup.R")
## densities <- read.csv("data/densities.csv")


## ---- eval = FALSE------------------------------------------------------------
## densities <- read.csv("data/densities.csv")
## head(densities)


## ---- eval = FALSE------------------------------------------------------------
## ?fluidpage
## ?sidebarLayout
## ?sidebarPanel
## ?mainPanel



## ---- child = "_03_shiny_spatial.Rmd"-----------------------------------------

## ----include = FALSE----------------------------------------------------------
source("_setup.R")



## ---- child = "_04_shiny_synthesis.Rmd"---------------------------------------

## ----include = FALSE----------------------------------------------------------
source("_setup.R")



## ---- child = "_05_shiny_in_prod.Rmd"-----------------------------------------

## ----include = FALSE----------------------------------------------------------
source("_setup.R")



## ---- child = "_last.Rmd"-----------------------------------------------------

## ---- echo = FALSE, results="asis"--------------------------------------------
pkg <- yaml::read_yaml("data/packages.yaml")
for (i in seq_along(pkg)) {
  x  <- pkg[[i]]
  if (length(x$cran)) {
    ctxt <- "[CRAN](https://CRAN.R-project.org/package={x$name})"
  } else ctxt <- ""
  cat(glue::glue(
    "* __{x$name}__: {x$description}  ",
    "[{gh()}](https://github.com/{x$github}) ", 
    "{ctxt}\n\n"
  ))
}


