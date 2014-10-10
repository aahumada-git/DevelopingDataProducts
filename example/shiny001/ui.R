#
# ui.R
#
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("[HeaderPanel]"),
  sidebarPanel(
    h3('[Sidebar Panel]'),
    textInput(inputId="text1", label = "Input text1"),
    textInput(inputId="text2", label = "Input text2"),
    actionButton("goButton", "Go!")
  ),
  mainPanel(
    h3('[Main Panel]'),
    p('Output text1:'), textOutput('text1'),
    p('Output text2:'), textOutput('text2'),
    p('Output text3:'), textOutput('text3'),
    p('Output text4:'), textOutput('text4'),
    p('Output text5:'), textOutput('text5'),
    p('Output text1 + text2:'), textOutput('text6')
  )
))