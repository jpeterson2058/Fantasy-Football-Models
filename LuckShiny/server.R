library(shiny)
library(readr)


AL <- read_csv("Andrew_Luck_2016.csv")
ALdf<- as.data.frame(AL)


shinyServer(function(input, output) {

  formulaText<- reactive({
    paste("PassYds ~", input$variable)
  })


  output$caption<- renderText({
    formulaText()
  })


  output$PassYds<- renderPlot({
    boxplot(as.formula(formulaText()),
            data = ALdf)
  })
})




