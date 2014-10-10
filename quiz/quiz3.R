setwd("C:/Users/aahumada.SA/MatLab/RStudio/DevelopingDataProducts/quiz")

d <- read.csv("annual_all_2013.csv")

sub <- subset(d, Parameter.Name %in% c("PM2.5 - Local Condictions", "Ozone") 
               & Pollutant.Standard %in% c("Ozone 8-Hour 2008", "PM25 Annual 2006") )

pollavg <- aggregate(sub[,"Arithmetic.Mean"], 
                     sub[, c("Longitud", "Latitude", "Parameter.Name")])

names(pollavg)[4] <- "level"

pollavg <- trasnsform(pollavg, Parameter.Name ~ factor(Parameter.Name))

rm(d, sub)

monitor <- data.matrix( pollavg[,c("Longitude", "Latitude")])
