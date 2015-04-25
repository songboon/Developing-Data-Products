library(shiny)

# Load the ggplot2 package which provides
# the mtcars dataset.
library(ggplot2)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Filter data based on selections
  output$table <- renderDataTable({
    ##data <- mpg
    data <- mtcars
    if (input$gear != "All"){
      data <- data[data$gear == input$gear,]
    }
    if (input$cyl != "All"){
      data <- data[data$cyl == input$cyl,]
    }
    if (input$trans != "All"){
      data <- data[data$am == input$trans,]
    }
    data
  })
  
})