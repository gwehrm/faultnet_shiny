document_ui <- function(id) {
  ns <- NS(id)
  
  
  tagList(
    
    box(title = "Report Fault to db or SAP")
    
  )
  
}

document_server <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    
    
  }) 
}