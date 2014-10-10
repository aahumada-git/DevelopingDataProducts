#
# ui.R
#
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Motor Trend Cars - Linear Regression"),
  sidebarPanel(
    radioButtons("radio_regresor", label = h3("Choose regressors of model: mpg ~ x"),
      choices = list("disp"         = 1, 
                     "hp"           = 2, 
                     "drat"         = 3, 
                     "wt"           = 4, 
                     "factor(cyl)"  = 5,
                     "factor(vs)"   = 6,
                     "factor(am)"   = 7,
                     "factor(gear)" = 8,
                     "factor(carb)" = 9),
      selected    = 1),
    checkboxInput("checkbox_abline", label = "Regression Line", value = TRUE),
    hr(),
    tags$a(href="index.html", "Application Help!")
  ),
  mainPanel(
    plotOutput('plot1')
  )
))

