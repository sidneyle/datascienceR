#' The Table function, a foundation for data science
#'
#' This function creates a table "object," so to speak. Initializes an empty `list`.
#' @keywords Table
#' @import dplyr
#' @import ggplot2
#' @export
#' @examples
#' Table() %>% with_columns()

Table <- function() {
  return(list())
}
