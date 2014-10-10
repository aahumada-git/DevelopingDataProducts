#
# server.R
#
library(shiny)
library(graphics)
library(stats)

data(mtcars)

idx_regresor <- 1
flg_abline   <- TRUE

shinyServer(function(input, output, session) {
  
    idx_regresor <- reactive({ input$radio_regresor  })
    
    flg_abline   <- reactive({ input$checkbox_abline })
    
    output$plot1 <- renderPlot({
      y  <- mtcars$mpg; y_lab = "mpg"
      
      i <- idx_regresor()
      
      if ( i == 1 ) { x <- mtcars$disp         ; x_lab = "disp"        } 
      if ( i == 2 ) { x <- mtcars$hp           ; x_lab = "hp"          } 
      if ( i == 3 ) { x <- mtcars$drat         ; x_lab = "drat"        }  
      if ( i == 4 ) { x <- mtcars$wt           ; x_lab = "wt"          } 
      if ( i == 5 ) { x <- factor(mtcars$cyl)  ; x_lab = "factor(cyl)" } 
      if ( i == 6 ) { x <- factor(mtcars$vs)   ; x_lab = "factor(vs)"  } 
      if ( i == 7 ) { x <- factor(mtcars$am)   ; x_lab = "factor(am)"  } 
      if ( i == 8 ) { x <- factor(mtcars$gear) ; x_lab = "factor(gear)"} 
      if ( i == 9 ) { x <- factor(mtcars$carb) ; x_lab = "factor(carb)"}
      
      fit     <- lm( y ~ x )
      formula <- sprintf("%s ~ %s", y_lab, x_lab )
      
      plot(x, y, xlab = x_lab, ylab = y_lab, main = formula )
      if ( flg_abline() ) {
        abline(coef = fit$coefficients, col = "red")  
      }
    })
    
})