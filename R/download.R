#' Download a file.
#' 
#' @importFrom httr GET
#' @importFrom httr content
#' @export
download <- function(url){
  content(GET(url))
}