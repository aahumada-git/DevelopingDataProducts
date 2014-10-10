#
# server.R
#
library(shiny)
x <<- x + 1
y <<- 0

shinyServer(
  function(input, output) {
    y <<- y +1
    z <- reactive({as.numeric(input$text1)+100})
    output$text1 <- renderText({input$text1})
    output$text2 <- renderText({input$text2})
    output$text3 <- renderText({z()})
    output$text4 <- renderText(y)
    output$text5 <- renderText(x)
    
    output$text6 <- renderText({
      input$goButton
      isolate(paste(input$text1, input$text2))
    })
  }
)