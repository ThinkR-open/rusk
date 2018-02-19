library(shiny)
library(rusk)
ui <- fluidPage(

   titlePanel("Draw your Multiplication Table"),
   sidebarLayout(
      sidebarPanel(
         sliderInput("table",
                     "table",
                     min = 1,
                     max = 200,
                     value = 3,
                     step = 1)
,
        sliderInput("modulo",
                    "modulo",
                    min = 1,
                    max = 500,
                    value = 50,
                    step = 1)
      ,checkboxInput(inputId = "label",label = "Show Label",value = FALSE),
      checkboxInput(inputId = "auto",label = "Automatic modulo update",value = FALSE),
numericInput("speed","speed (milliseconds)",min=1,max=5000,value=1000)
),
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("distPlot")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output,session) {

   output$distPlot <- renderPlot({
rusk::draw(table = as.numeric(input$table),
     modulo = as.numeric(input$modulo),
     label=as.logical(input$label))
   })

   observe({
     invalidateLater(input$speed, session)
      if ( input$auto ){
     updateSliderInput(session, "modulo",  value = isolate(input$modulo) + 1)
     }
   })

}

# Run the application
shinyApp(ui = ui, server = server)

