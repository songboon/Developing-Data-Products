library(shiny)

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

# Define the overall UI
shinyUI(
  fluidPage(
    titlePanel("Very Basic Data Table Exploration"),
    
    # Create a new Row in the UI for selectInputs
    fluidRow(
      column(4, 
             selectInput("gear", 
                         "Gear:", 
                         c("All", 
                           unique(as.character(mtcars$gear))))
      ),
      column(4, 
             selectInput("trans", 
                         "Transmission Type:", 
                         c("All", 
                           unique(as.character(mtcars$am))))
      ),
      column(4, 
             selectInput("cyl", 
                         "Cylinders:", 
                         c("All", 
                           unique(as.character(mtcars$cyl))))
      )        
    ),
    # Create a new row for the table.
    fluidRow(
      dataTableOutput(outputId="table")
    )    
  )  
)