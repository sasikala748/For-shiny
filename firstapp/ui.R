library(datasets)
data("USArrests")
library(shiny)
shinyUI(pageWithSidebar(headerPanel("My app for US Arrests"),
        sidebarPanel(selectInput(inputId = "variable","Select the Variable",
         choices = c("Murder"=1,"Assault"=2,"UrbanPop"=3,"Rape"=4),selected = 2,
                                 selectize = FALSE),
textInput(inputId = "heading","Title","Boxplot of US Arrest data"),
                     radioButtons(inputId = "colours","colour of your choice",
                                  list("Green","Yellow","Red","Blue"),"Green"),
                                  submitButton("change now")),
        mainPanel(
        tabsetPanel(type = "tab",
        tabPanel("plot",
        plotOutput(outputId = "boxplt")),
        tabPanel("summary",
        verbatimTextOutput(outputId = "summary")))
                
                           
                          
                                                  )))