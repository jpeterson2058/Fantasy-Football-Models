library(shiny)


shinyUI(pageWithSidebar(


  headerPanel("Andrew Luck Passing Yards Analysis"),


  sidebarPanel(

    selectInput("variable", "Predictors:",
                list("Defensive Rank" = "Def.Rank.Yds",
                     "Opponent" = "Opp", "Location" = "Location")),
    sliderInput("interger", "Defensive Rank:",
                min = 1, max = 32, value = 16)
  ),


  mainPanel(
    h3(textOutput("caption")),

    h4("Predicted Passing Yards"), verbatimTextOutput("prediction"),

    plotOutput("PassYds")
  )
))
