library(shiny)
shinyServer(function(input,output){
        colum <- reactive({as.numeric(input$variable)})
        output$boxplt <- renderPlot({
                
                boxplot(USArrests[,colum()],col=input$colours,main=input$heading,
                        xlab=names(USArrests[colum()]))
       })


   output$summary <- renderPrint({summary(USArrests)})    
})