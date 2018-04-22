library(shiny)

dt_KPI <- read.csv(".../GeneralInsurance_Class/data/lesson2_KPI.csv")
# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Lesson 1 - Homework"),

  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("col", "Coloring var:",
                  choices=c("Region","Unit","Segment","Business","Year")),
      hr(),
      helpText("Data from lesson2_KPI.csv")
    ),
    # Create a spot for the barplot
    mainPanel(
      plotOutput("dt_KPI.plot")
    )
  )
)