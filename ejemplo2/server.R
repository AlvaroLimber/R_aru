library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    output$fx <- renderPlot({
        gx<-function(x,a,b){
            y<- a+b*x
        }
        curve(gx(x,a=input$a,b=input$b),xlim=c(-50,50),ylim=c(-50,50))
    })

})
