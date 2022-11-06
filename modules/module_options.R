options_ui <- function(id) {
  ns <- NS(id)
  
  
  tagList(
    
    box(title = "Upload new FMEA"),
    box(title = "Users")

    
  )
  
  
  
  
  
  
}

options_server <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    
    
  }) 
}