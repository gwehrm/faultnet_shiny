fmea_ui <- function(id) {
  ns <- NS(id)
  
  
  tagList(
    
    box(title = "Results in Field"),
    box(title = "Proposed Updates in FMEA")

  )
  
}

fmea_server <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    
    
  }) 
}