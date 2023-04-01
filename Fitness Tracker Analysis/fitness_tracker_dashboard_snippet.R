library(shiny)
library(tidyverse)

# Define UI
ui <- fluidPage(
  titlePanel("Fitness Trackers Dashboard"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file", "Choose CSV file"),
      checkboxInput("header", "Header", TRUE),
      selectInput("variables", "Select variables", choices = c("Selling_Price", "Original_Price")),
      actionButton("load", "Load Data")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Summary", verbatimTextOutput("summary")),
        tabPanel("Scatterplot", plotOutput("scatterplot")),
        tabPanel("Bar Chart", plotOutput("bar_chart")),
        
      )
    )
  )
)

# Define server
server <- function(input, output) {
  
  # Load data
  data <- reactive({
    req(input$file)
    read.csv(input$file$datapath, header = input$header)
  })
  
  # Create summary output
  output$summary <- renderPrint({
    summary(data())
  })
  
  # Create histogram output
  output$histogram <- renderPlot({
    hist(data()[[input$variables]], main = paste("Distribution of", input$variables))
  })
  
  # Create scatterplot output
  output$scatterplot <- renderPlot({
    plot(data()$Selling_Price, data()$Rating, main = "Selling Price vs. Rating", xlab = "Selling Price", ylab = "Rating")
  })
  
  # Create bar chart output
  output$bar_chart <- renderPlot({
    brand_counts <- table(data()$Brand)
    barplot(brand_counts, main = "Number of Products in Each Brand", xlab = "Brand", ylab = "Count")
  })
  
  
}

# Run app
shinyApp(ui, server)
