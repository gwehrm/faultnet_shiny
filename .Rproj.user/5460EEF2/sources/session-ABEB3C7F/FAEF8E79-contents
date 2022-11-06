diagnosis_ui <- function(id) {
  ns <- NS(id)
  
  
  tagList(
    
    box(title = "Auswahl des Diagnose",
        width = "100%",
        collapsible = TRUE,
        solidHeader = TRUE,
        status = "success",
        fluidRow(
          column(3,
                 pickerInput(
                   ns("select_bn"),
                   choices = c("test_bn"),
                   selected = c()
                 )
          )
        )
        ),
    box(title = "Evidence",
        collapsible = TRUE,
        solidHeader = TRUE,
        status = "success",
        
        width = "100%",
        fluidRow(
          column(width = 4,
                 uiOutput(ns("evidence_options"))
                 
                 )
        )),
    box(title = "Result",
        width = "100%",
        collapsible = TRUE,
        solidHeader = TRUE,
        status = "success",

        
        uiOutput(ns("result")))
  )
  
}

diagnosis_server <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    
    ns <- session$ns
    
    output$evidence_options <- renderUI(
      
      tagList(
        
        radioButtons(
          inputId = ns("A"), 
          label = "Evidence A", 
          choices = c(names(net[["cptlist"]][["A"]]), "keine Antwort"), 
          selected = "keine Antwort"),
        
        
        radioButtons(
          inputId = ns("B"), 
          label = "Evidence B", 
          choices = c(names(net[["cptlist"]][["B"]]), "keine Antwort"), 
          selected = "keine Antwort")
      )
    )
    
    output$result <- renderUI({

      req(input$A)
      req(input$B)
    
      A <- input$A
      B <- input$B
      
      net_2 <- setEvidence(net, nodes = c("B"),states = c("bad"))
      querygrain(net_2, nodes = c("A", "B", "C"))
      
      
      if (A != "keine Antwort" && B != "keine Antwort") {


        net_2 <- setEvidence(net, nodes = c("A", "B"),states = c(A, B))
        prob_c <- querygrain(net_2, nodes = c("A", "B", "C"))$C[1]
        
        
        
      } else if (A != "keine Antwort" && B == "keine Antwort") {

        net_2 <- setEvidence(net, nodes = c("A"),states = c(A))
        prob_c <- querygrain(net_2, nodes = c("A", "B", "C"))$C[1]
        
        
      } else if (A == "keine Antwort" && B != "keine Antwort") {
        
        net_2 <- setEvidence(net, nodes = c("B"),states = c(B))
        prob_c <- querygrain(net_2, nodes = c("A", "B", "C"))$C[1]
        

        
      } else {
        prob_c <- dfit$C$prob[2]
      }
      
      summaryBox2("Wahrscheinlichkeit C", prob_c, width = 3, icon = "fas fa-calendar", style = "info")
      
      
    })
    
    
    
  }) 
  

}