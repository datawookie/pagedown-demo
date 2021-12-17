library(rmarkdown)
library(pagedown)

RMD <- "paged-doc.Rmd"
HTML <- "paged-doc.html"
PDF <- "paged-doc.pdf"

demo_paged <- function(...) {
  pagedown::html_paged(
    css = "common.css",
    template = "template.html"
  )
}

render(
  input = RMD,
  output_file = HTML,
  quiet = TRUE
)

chrome_print(
  input = HTML,
  output = PDF
)