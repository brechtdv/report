# Define server
shinyServer(function(input, output) {
  output$downloadPDF <-
    downloadHandler(filename = "report.pdf",
                    content = function(file){
                      # generate PDF
                      knit2pdf("report.Rnw")

                      # copy pdf to 'file'
                      file.copy("report.pdf", file)

                      # delete generated files
                      file.remove("report.pdf", "report.tex",
                                  "report.aux", "report.log")

                      # delete folder with plots
                      unlink("figure", recursive = TRUE)
                    },
                    contentType = "application/pdf"
  )
  
  output$downloadHTML <-
    downloadHandler(filename = "report.html",
                    content = function(file){
                      # generate HTML
                      knit2html("report.Rmd")
                      
                      # copy html to 'file'
                      file.copy("report.html", file)
                      
                      # delete generated files
                      file.remove("report.html", "report.md")

                      # delete folder with plots
                      unlink("figure", recursive = TRUE)
                    },
                    contentType = "text/html"
  )
  
})