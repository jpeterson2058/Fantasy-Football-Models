
library(shiny)


shinyUI(pageWithSidebar(


  headerPanel("Andrew Luck Passing Yards Analysis"),


  sidebarPanel(

      selectInput("variable", "Predictors:",
                  list("Defensive Rank" = "Def.Rank.Yds",
                       "Opponent" = "Opp", "Location" = "Location"))
  ),


  mainPanel(
    h3(textOutput("caption")),

    plotOutput("PassYds")
  )
))


