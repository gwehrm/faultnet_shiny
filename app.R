library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(summaryBox)


source("C:/Users/gabor/Documents/Repos/faultnet_R/helper/helper_functions.R")
source_files(c("./modules/", "./helper/"))


# Define UI for application that draws a histogram
ui <- dashboardPage(
  dashboardHeader(
    title = "Faultnet"

  ),
  dashboardSidebar(
    sidebarMenu(
      id = "tabs",
      
      menuItem("Applications", tabName = "", icon = icon("computer"),
               menuSubItem("Overview",
                           tabName = "overview", 
                           icon = icon("compass")),
               menuSubItem("Diagnosis",
                           tabName = "diagnosis", 
                           icon = icon("stethoscope")),
               menuSubItem("Document", tabName = "document", icon = icon("pen")),
               menuSubItem("FMEA", tabName = "fmea", icon = icon("table"))),
      
      menuItem("Options", tabName = "options", icon = icon("wrench"))
    )
    
  ),
  dashboardBody(
    uiOutput("body")

  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  
  
  output$body <- renderUI({
    
    switch(
      input$tabs,
      
      "overview" = overview_ui("overview"),
      "diagnosis" = diagnosis_ui("diagnosis"),
      "document" = document_ui("document"),
      "fmea" = fmea_ui("fmea"),
      "options" = options_ui("options")
    
           )
    
  })
  overview_server("overview")
  diagnosis_server("diagnosis")
  fmea_server("fmea")
  options_server("options")
  


}

# Run the application 
shinyApp(ui = ui, server = server)
