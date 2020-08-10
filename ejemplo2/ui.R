library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Ejemplo 2"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("a","Valor de a",min=-10,max=10,value=-10,step =2,animate = T),
            sliderInput("b","Valor de b",min=-10,max=10,value=-10,step =2,animate = T)
            #numericInput("a","Valor de a",1),
            #numericInput("b","Valor de b",1)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("fx")
        )
    )
))
