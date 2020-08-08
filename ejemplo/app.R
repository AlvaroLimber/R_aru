library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Aplicación de Ejemplo"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(#inputs
            sliderInput("b1","Seleccione la edad",min = 0,max=100,value=15),
            radioButtons("b2","Seleccione el área",choices = c("Urbano","Rural"),selected = "Rural"),
            selectInput("b3","Seleccione el sexo",choices = c("Mujer","Hombre"),selected = "Mujer"),
            actionButton("b4","Color"),
            dateInput("b5","Fecha"),
            numericInput("b6","Valor:",value = 100),
            textInput("b7","Título"),
            passwordInput("b8","Contraseña")
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("g1"),
           tableOutput("t1")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$g1 <- renderPlot({
        plot(0,type="n",xlim=c(0,100),ylim=c(0,100),axes=input$b4)
        abline(h=input$b1,col="red",lwd=2,lty=5)
        title(main=input$b7)
        
    })
    output$t1<-renderTable({
        x<-rbinom(input$b6,10,0.7)
        y<-rbinom(input$b6,10,0.7)
        table(x,y)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)