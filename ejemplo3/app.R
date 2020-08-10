#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Ejemplo 2"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            #sliderInput("a","Valor de a",min=-10,max=10,value=1,step =1 ),
            #sliderInput("b","Valor de b",min=-10,max=10,value=1,step =1 )
            numericInput("a","Valor de a",1),
            numericInput("b","Valor de b",1)
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("fx")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$fx <- renderPlot({
        gx<-function(x,a,b){
            y<- a+b*x
        }
        curve(gx(x,a=input$a,b=input$b),xlim=c(-50,50),ylim=c(-50,50))
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
