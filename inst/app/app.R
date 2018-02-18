library(shiny)
library(nicetable)
ui <- fluidPage(

   titlePanel("Draw your Table"),
   sidebarLayout(
      sidebarPanel(
         sliderInput("table",
                     "table",
                     min = 1,
                     max = 50,
                     value = 3,step = 1)
,
        sliderInput("modulo",
                    "modulo",
                    min = 1,
                    max = 1000,
                    value = 50,step = 1)
      ),
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("distPlot")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

   output$distPlot <- renderPlot({
draw(table = as.numeric(input$table),modulo = as.numeric(input$modulo))
   })
}

# Run the application
shinyApp(ui = ui, server = server)

