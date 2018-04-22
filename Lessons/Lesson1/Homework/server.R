library(shiny)
library(ggplot2)

getwd()
dt_KPI <- read.csv(".../GeneralInsurance_Class/data/lesson2_KPI.csv")

# Define a server for the Shiny app
shinyServer(function(input, output) {
  output$dt_KPI.plot<- renderPlot({
    p<-ggplot(data = dt_KPI,
              mapping = aes_string(x = dt_KPI$Premium, y = dt_KPI$Expenses, colour = input$col)
    ) +
      geom_point() +
      geom_smooth()
    p + labs(x="Premium",y="Expenses")
  })
})