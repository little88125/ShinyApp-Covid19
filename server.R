ls#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data

covid <- read.csv("total_cases.csv")

# Define a server for the Shiny app 
function(input, output) { 
    
    # Fill in the spot we created for a plot 
    output$World <- renderPlot({ 
        
        # Render a barplot 
        barplot(covid[,input$date],  
                main=input$date, 
                ylab="Number of Covid 19 Cases", 
                xlab="Date") 
    })
}