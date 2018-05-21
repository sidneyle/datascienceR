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
  label <- col[[1]]
  value <- col[2]
  tbl[label] <- value
  return(tbl)
}

