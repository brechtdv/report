# Define server
shinyServer(function(input, output) {
  output$downloadPDF <-
    downloadHandler(filename = "report.pdf",
                    content = function(file){
                      knit2pdf("report.Rnw")
                      file.rename("report.pdf", file)
                    },
                    contentType = "application/pdf"
  )
  
  output$downloadHTML <-
    downloadHandler(filename = "report.html",
                    content = function(file){
                      knit2html("report.Rmd")
                      file.rename("report.html", file)
                    },
                    contentType = "text/html"
  )
  
})