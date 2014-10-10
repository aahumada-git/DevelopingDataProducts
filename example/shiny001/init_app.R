#
# init_app.R
#
library(shiny)
library(knitr)

setwd("C:/Users/aahumada.SA/MatLab/RStudio/DevelopingDataProducts/example/shiny001")

x <- 0
y <- 0

source("ui.R")
source("server.R")

knit('knitr-minimal.Rmd')


# runApp(display.mode='showcase') 
runApp()

# The application must include the following:
#   
# Some form of input (widget: textbox, radio button, checkbox, ...)
# Some operation on the ui input in sever.R
# Some reactive output displayed as a result of server calculations
# You must also include enough documentation so that a novice user could use your application.
# The documentation should be at the Shiny website itself. Do not post to an external link.