#
# init_app.R
#
library(shiny)
library(knitr)

setwd("C:/Users/aahumada.SA/MatLab/RStudio/DevelopingDataProducts/project/DevDatProd")

source("ui.R")
source("server.R")

knitr::opts_knit$set(base.dir = './www/' )
knitr::knit2html(input='./www/index.Rmd', output='./www/index.html', encoding='ISO8859-1')

print(getwd())

# runApp(display.mode='showcase') 
runApp( appDir = getwd() )

#
# To install directly from GitHub, run this:
#   
# if (!require("devtools"))
#   install.packages("devtools")
# devtools::install_github("rstudio/shinyapps")
# devtools::install_github("rstudio/rmarkdown")
#


# Register App
# shinyapps::setAccountInfo(name='aahumada', token='35F86A4D0F308196E443347D393EDA6D', secret='hGps/Vh2a5dP6YZSoTR06ee+4m/Ez+srUJqPVdwV')

# Deploy App
# library(shinyapps)
# deployApp()
