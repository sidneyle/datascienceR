#' Adding a column to a table
#'
#' This function adds columns to the initialized table.
#' @param tbl the input table
#' @param col the column
#' @keywords Table, columns, column
#' @export
#' @examples
#' Table() %>% with_column(list("ColumnA", c(1, 1, 1))

with_column <- function(tbl, col) {
  if (mode(col[[1]]) != "character" & is.vector(col[[2]])) {
    stop("The column list must be a string denoting the name of a column
         followed by a vector containing the values.") # Error handling
  }
  label <- col[[1]]
  value <- col[2]
  tbl[label] <- value
  return(as.data.frame(tbl))
}

