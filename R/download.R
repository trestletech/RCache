#' Download a file.
#' 
#' @importFrom httr GET
#' @importFrom httr content
#' @export
download <- function(url){  
  if (exists(url, envir=cacheEnv)){
    return(get(url, envir=cacheEnv))
  }
  
  file <- content(GET(url))
  assign(url, file, envir=cacheEnv)
    
  file
}