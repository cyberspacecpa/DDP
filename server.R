# DDP v2 Shiny Server webAPP 12/18/2014

library(shiny) 

FV <- function(rate=0.01, years=1,deposit=1) {deposit * ((1+rate)^years-1)/rate}


shinyServer(
    function(input, output) {
        
        output$inputratevalue <- renderPrint({input$rate})
        output$inputyearsvalue <- renderPrint({input$years})
        output$inputdepositvalue <- renderPrint({input$deposit})
        output$FV <- renderPrint({FV(input$rate,input$years, input$deposit)})
        
    } 
)
