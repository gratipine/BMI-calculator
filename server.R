library(shiny)

shinyServer(function(input, output) {
  observe({
  is.kgs <- reactive({switch(input$type_of_weight, 
                kgs = 1,
                lbs = 0)})
  is.meters <- reactive({switch(input$type_of_height, 
                   meters = 1,
                   inches = 0)})
  if(is.kgs() == 1) {
    kgs <- as.numeric(input$weight)
  } else {
    kgs <- as.numeric(input$weight) * 0.45
  }

  if(is.meters() == 1) {
    meters <- as.numeric(input$height)
  } else {
    meters <- as.numeric(input$height) * 2.54
  }

  output$BMI <- renderText(kgs/(meters^2))
})
})
