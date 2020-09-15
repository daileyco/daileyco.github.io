blogdown::serve_site()
blogdown::stop_server()

blogdown::build_site()


website.files <- list.files("./public", full.names = TRUE)


dir.create("./docs")
docs.folder <- file.path("./docs")
file.copy(website.files, docs.folder, recursive = TRUE, overwrite = TRUE)
file.create("./docs/.nojekyll")
