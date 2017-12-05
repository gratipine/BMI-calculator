library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("BMI calculator"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "weight", label = "Weight", value = 75),
      radioButtons("type_of_weight", label = "Which measurement?" ,choices = c("lbs", "kgs"), 
                   selected = "kgs"),
      textInput(inputId = "height", label = "Height", value = 1.80),
      radioButtons("type_of_height", label = "Which measurement?", choices = c("inches", "meters"),
                   selected = "meters"),
      textOutput("BMI")
      ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
