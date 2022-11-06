source_files <- function(paths) {
  # source R files in specified path
  
  for (path in paths) {
    files <- list.files(path = path, 
                        pattern = "*.R$", 
                        full.names = TRUE,
                        recursive = TRUE)
    
    lapply(files, source)
  }

  
}