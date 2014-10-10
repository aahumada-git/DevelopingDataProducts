#
# init_app.R
#
library(shiny)
library(knitr)

setwd("C:/Users/aahumada.SA/MatLab/RStudio/DevelopingDataProducts/project/base")

source("ui.R")
source("server.R")

knitr::opts_knit$set(base.dir = './www/' )
knitr::knit2html(input='./www/index.Rmd', output='./www/index.html', encoding='ISO8859-1')

print(getwd())

# runApp(display.mode='showcase') 
runApp( appDir = getwd() )

