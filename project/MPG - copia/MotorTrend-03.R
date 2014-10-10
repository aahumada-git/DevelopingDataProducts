setwd("C:/Users/aahumada.SA/MatLab/RStudio/RegressionModels/project")
#------------------------------------------------------
# Peer Assessments /Regression Models Course Project
#------------------------------------------------------
# Context
# 
# You work for Motor Trend, a magazine about the automobile industry. 
# Looking at a data set of a collection of cars, they are interested in exploring the 
# relationship between a set of variables and miles per gallon (MPG) (outcome). 
# They are particularly interested in the following two questions:
#   
# - Is an automatic or manual transmission better for MPG?
# - Quantifying how different is the MPG between automatic and manual transmissions?
#
# A data frame with 32 observations on 11 variables.
# 
# [, 1]  mpg	 Miles/(US) gallon
# [, 2]	 cyl	 Number of cylinders
# [, 3]	 disp	 Displacement (cu.in.)
# [, 4]	 hp	   Gross horsepower
# [, 5]	 drat	 Rear axle ratio
# [, 6]	 wt	   Weight (lb/1000)
# [, 7]	 qsec	 1/4 mile time
# [, 8]	 vs	   V/S
# [, 9]	 am	   Transmission (0 = automatic, 1 = manual)
# [,10]	 gear	 Number of forward gears
# [,11]	 carb	 Number of carburetors

P1 <- function() {
  library(graphics)
  library(stats)
  
  data(mtcars)
  
  
  for (i in 1:9 ) {
    y  <- mtcars$mpg; y_lab = "mpg"
    
    if ( i == 1 ) { x <- mtcars$disp         ; x_lab = "disp"} 
    if ( i == 2 ) { x <- mtcars$hp           ; x_lab = "hp"} 
    if ( i == 3 ) { x <- mtcars$drat         ; x_lab = "drat"} 
    if ( i == 4 ) { x <- mtcars$wt           ; x_lab = "wt"} 
    if ( i == 5 ) { x <- factor(mtcars$cyl)  ; x_lab = "cyl"} 
    if ( i == 6 ) { x <- factor(mtcars$vs)   ; x_lab = "vs"} 
    if ( i == 7 ) { x <- factor(mtcars$am)   ; x_lab = "am"} 
    if ( i == 8 ) { x <- factor(mtcars$gear) ; x_lab = "gear"} 
    if ( i == 9 ) { x <- factor(mtcars$carb) ; x_lab = "carb"}
    
    fit     <- lm( y ~ x )
    formula <- sprintf("%s ~ %s", y_lab, x_lab )
    
    plot(x, y, xlab = x_lab, ylab = y_lab, main = formula )
    abline(coef = fit$coefficients, col = "red")
  }
  
}


library(tables)
library(xtable)
library(datasets)

data(mtcars)

fit <- lm(formula = mpg ~ factor(am) + factor(cyl) + wt + hp, data = mtcars)
sc  <- summary(fit)$coefficients


latex( tabular( mpg + 1 ~ 1, data = mtcars  ) )

df <- data.frame(A = c(1.00123, 33.1, 6),
                 B = c(111111, 3333333, 3123.233))
## The following code gives the error
## formal argument "digits" matched by multiple actual arguments
## print(xtable(df, display = c("s","e","e")),
## format.args = list(digits = 3, big.mark = " ", decimal.mark = ","))
## specify digits as argument to xtable instead

print(xtable(df, display = c("s","f","f"), digits = 4),
      format.args = list(big.mark = " ", decimal.mark = ","), type = "html" )

## The following code gives the error
## formal argument "format" matched by multiple actual arguments
## print(xtable(df, digits = 4),
## format.args = list(format = c("s","e","e"),
## big.mark = " ", decimal.mark = ","))
## specify format using display argument in xtable
print(xtable(df, display = c("s","e","e"), digits = 4),
      format.args = list(big.mark = " ", decimal.mark = ","), type = "html")

# cat(sprintf("\nLM: MPG ~ F(AM)\n"))
# model = 
# f1 <- lm( mpg ~ factor(am), data = mtcars )
# print(summary(f1))

# cat(sprintf("\nLM: mpg ~ factor(am) + factor(cyl) + wt + hp\n"))
# fit <- lm(formula = mpg ~ factor(am) + factor(cyl) + wt + hp, data = mtcars)
# print(summary(fit))
# 
# opar <- par(mfrow = c(2, 2))
# plot(fit)
# par( opar )

# opar <- par(mfrow = c(3, 2))
# plot( mpg ~ factor(cyl)  , data = mtcars )
# plot( mpg ~ factor(vs)   , data = mtcars )
# plot( mpg ~ factor(am)   , data = mtcars )
# plot( mpg ~ factor(gear) , data = mtcars )
# plot( mpg ~ factor(carb) , data = mtcars )
# par( opar )
# 
# 
# opar <- par(mfrow = c(3, 2))
# plot( mpg ~ hp    , data = mtcars )
# plot( mpg ~ wt    , data = mtcars )
# plot( mpg ~ disp  , data = mtcars )
# plot( mpg ~ drat  , data = mtcars )
# plot( mpg ~ qsec  , data = mtcars )
# par( opar )





