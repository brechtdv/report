library(shiny)
library(knitr)

# Define UI for application
shinyUI(pageWithSidebar(
  
  ## Application title
  headerPanel("Report"),
  
  ## Sidebar panel
  sidebarPanel("This simple Shiny app demonstrates",
               "how to generate PDF or HTML reports through Shiny",
               br(),
               br(),
               "The source code is available on GitHub:",
               a(href = "https://github.com/brechtdv/report",
                 "https://github.com/brechtdv/report")
  ),
  
  ## Main panel
  mainPanel(
    downloadButton("downloadPDF", "Download nice PDF report"),
    downloadButton("downloadHTML", "Download nice HTML report")
  )
))