#' Download a file.
#' 
#' @importFrom httr GET
#' @importFrom httr content
#' @export
download <- function(url){
  if (!is.null(cache[[url]])){
    return(cache[[url]])
  }
  
  file <- content(GET(url))
  cache[[url]] <<- file
    
  file
}