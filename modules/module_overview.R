overview_ui <- function(id) {
  ns <- NS(id)
  
  
  tagList(
    
    box(title = "Diagnosis",
        "App zu Diagnose von Fehler"),
    box(title = "Document",
        "Meldung des Fehlers"),
    box(title = "FMEA",
        "Rueckspielung und Aktualisierung der Wahrscheinlichkeiten")
  )
  
  
  
  
  
  
}

overview_server <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    
    
  }) 
}