#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Load Data

covid <- read.csv("total_cases.csv")


# Use a fluid Bootstrap layout 
fluidPage(     
    
    # Give the page a title 
    titlePanel("Covid 19 Cases"), 
    
    # Generate a row with a sidebar 
    sidebarLayout(       
        
        # Define the sidebar with one input 
        sidebarPanel(p(strong("Documentation:",style="color:red"), a("User Help Page",href="http://rpubs.com/shxu")), 
                     selectInput("2020-05-22", "Region:",  
                                 choices=colnames(covid)), 
                     hr(), 
                     helpText("Covid 19 Cases Number") 
        ), 
        
        # Create a spot for the barplot 
        mainPanel(
            plotOutput("World")   
        ) 
        
    ) 
) 