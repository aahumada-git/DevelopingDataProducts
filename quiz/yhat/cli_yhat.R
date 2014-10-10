################################################################################
## Client side

library(yhatr)

yhat.config  <- c(
  username="alex.ahumada@gmail.com",
  apikey="4f5f357e5622195cdde36d3d1c6cefd2",
  env="http://sandbox.yhathq.com/"
)

df <- data.frame(lon = c(-76.6167, -118.25), lat = c(39.2833, 34.05), radius = 20)

print( yhat.predict("pollutant", df) )
