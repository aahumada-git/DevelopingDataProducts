# Motor Trend Cars - Linear Regression


## User Guide

You have to select a regresor  for MPG and application will show to you:

> - Scatterplot in case of variable it continuous
> - Boxplot in case of variable it discrete.

Enjoy it!

## Executive Summary
This application try to answer specific question regarding the cars's relationship between miles per galon (MPG) and other variables in dataset. For this we have the folowing database:

> Motor Trend Car Road Tests: The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models)
This aplication show scaterplot graphics and tendence line retulting of applying linear regression to a mtcars dataset 

### Data Description Table

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


### Data Sample


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
