library(shiny)
library(knitr)

# Define UI for application
shinyUI(pageWithSidebar(
  
  ## Application title
  headerPanel("Report"),

  ## Sidebar panel
  sidebarPanel("I want to generate PDF or HTML reports through Shiny,
               but I cannot succeed in opening the files..
               The PDF keeps loading,
               while the HTML just shows a link to a tmp file..
               The reports are succesfully created on the server, though.."),
  
  ## Main panel
  mainPanel(
    downloadButton("downloadPDF", "Download nice PDF report"),
    downloadButton("downloadHTML", "Download nice HTML report")
  )
))
