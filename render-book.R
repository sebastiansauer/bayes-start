bookdown::preview_chapter("040-Bayes.Rmd")
bookdown::preview_chapter("050-Post.Rmd")

bookdown::render_book("index.Rmd",
                      output_format = "bookdown::bs4_book")
