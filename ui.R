library(shiny)
library(knitr)

# Define UI for application
shinyUI(pageWithSidebar(
  
  ## Application title
  headerPanel("Report"),

  ## Sidebar panel
  sidebarPanel("I want to generate PDF or HTML reports through Shiny,
               but I could not succeed in opening the files..
			   With 'file.copy()', the PDF report now opens,
               but the HTML still shows a link to a tmp file.."),
  
  ## Main panel
  mainPanel(
    downloadButton("downloadPDF", "Download nice PDF report"),
    downloadButton("downloadHTML", "Download nice HTML report")
  )
))
