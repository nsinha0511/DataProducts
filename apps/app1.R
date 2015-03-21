output$oid1 <- renderPrint({input$country})
output$oid2 <- renderPrint({input$popstart})
output$oid3 <- renderPrint({input$grwthrt})
output$oid4 <- renderPrint({input$yrs})

prediction <- function(country,tag,pop,yrs){
  if(tag == "1"){rt=0}
  else {
    if(tag == "2"){rt=.1}
    else {rt=-.01}
  }
  pop*(1+rt)^yrs
}
output$oid5 <- renderPrint({prediction(country=input$country,
                                       pop=input$popstart,
                                       tag=input$grwthrt,
                                       yrs=input$yrs)})