# Define server
shinyServer(function(input, output) {
  output$downloadPDF <-
    downloadHandler(filename = "report.pdf",
                    content = function(file){
                      knit2pdf("report.Rnw")
                      file.copy("report.pdf", file)
                      file.remove("report.pdf", "report.tex",
                                  "report.aux", "report.log")
                    },
                    contentType = "application/pdf"
  )
  
  output$downloadHTML <-
    downloadHandler(filename = "report.html",
                    content = function(file){
                      knit2html("report.Rmd")
                      file.copy("report.html", file)
                      file.remove("report.html", "report.md")
                    },
                    contentType = "text/html"
  )
  
})