
snippify <- function(file, path, ...) {
  f <- file(file)
  lines <- readLines(f)
  close(f)

  headers <- which(grepl("## ----", lines))
  start <- head(headers,-1)
  end <- tail(headers,-1) - 1
  for (i in 1:length(start)) {
    chunkName <- sub("(## ----)(?<chunk>[^-,]*)(.*)", "\\2", lines[start[i]], 
                     perl = TRUE)
    if (nchar(chunkName > 0)) {
      chunkPath<- file.path(path, paste0(chunkName,".R"))
      message(paste("  ** Writing", chunkPath))
      con <- file(chunkPath, "w")
      writeLines( lines[ (start[i] + 1) : end[i] ], con)
      close(con)
     
    }  
  }
}