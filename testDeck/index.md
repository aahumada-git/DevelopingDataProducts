---
title       : Motor Trend Cars
subtitle    : MPG Linear Regretion
author      : Alex Ahumada
job         : Data Scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Executive Summary

This application help to realize the cars's relationship between miles per galon (MPG) and other variables in dataset. For this we have the folowing database:


    Motor Trend Car Road Tests: The data was extracted from the 1974 Motor Trend US magazine, 
    and comprises fuel consumption and 10 aspects of automobile design and performance for 32 
    automobiles (1973-74 models). This aplication show scaterplot graphics and tendence line 
    retulting of applying linear regression to a mtcars dataset.


In this application version we only show linear regression with one regresors and used to identify the possible form of data in comparison to regression line.

The next release will show the procedure to select variable in a multivariable linear regression.

--- .class #id 

## User Guide

In this release you have to select a regresor for MPG variable and the application will show to you:

> - Scatterplot in case of variable it continuous.
> - Boxplot in case of variable it discrete.

Enjoy it!

--- .class #id 

## Data Description Table

The field in the data have the following meaning:

  Variable | Description 
  :-------:|:---------------
  mpg      |Miles/(US) gallon        
  cyl      |Number of cylinders      
  disp     |Displacement (cu.in.)   
  hp       |Gross horsepower         
  drat     |Rear axle ratio          
  wt       |Weight (lb/1000)         
  qsec     |1/4 mile time            
  vs       |V/S             
  am       |Transmission (0 = automatic, 1 = manual)
  gear     |Number of forward gears
  carb     |Number of carburetors 

--- .class #id 

## Data Sample


```r
head(mtcars)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

--- .class #id 

## Proposed Model

When the application will finnished we show how to reach the following linear model:

    mpg ~ factor(am) + factor(cyl) + wt + hp

The next table shown their coefficients:


```
##              Estimate Std. Error t value  Pr(>|t|)
## (Intercept)  33.70832    2.60489 12.9404 7.733e-13
## factor(am)1   1.80921    1.39630  1.2957 2.065e-01
## factor(cyl)6 -3.03134    1.40728 -2.1540 4.068e-02
## factor(cyl)8 -2.16368    2.28425 -0.9472 3.523e-01
## wt           -2.49683    0.88559 -2.8194 9.081e-03
## hp           -0.03211    0.01369 -2.3450 2.693e-02
```

--- .class #id 

## Residual Plot

The following graphics, called, "Residual Plots" are used to evaluate the "quality of model", will be reviewed in the next release:

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3.png) 
