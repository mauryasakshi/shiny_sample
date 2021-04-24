
library(shiny)
library(BH)

# Sample UI
shinyUI(fluidPage(
    titlePanel(
        h3("Sample Shiny Application",style = "color : red" )
        
        ),
    sidebarLayout(
        sidebarPanel(
            
            h4("Drop down for list of datasets - >",style = "color : blue"),
            h5(strong("List of Datasets in R"), style = "color : green"),
            strong("AirPassengers"),
            br(),
            strong("BJsales"),
            br(),
            strong("ChickWeight"),
            br(),
            strong("Formaldehyde"),
            br(),
            strong("Orange"),
            br(),
            ".....",
            br(),
            "...."
             
        ),
        mainPanel(
            selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
            tableOutput("table"),
            verbatimTextOutput("summary")
            
        )
    )

   
        
    
))