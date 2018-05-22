#' Adding columns to a table
#'
#' This function adds columns to the initialized table.
#' @param tbl the input table
#' @param cols the columns
#' @keywords Table, columns
#' @export
#' @examples
#' Table() %>% with_columns(list("ColumnA", c(1, 1, 1),
#'                               "ColumnB", c(2, 2, 2)))

with_columns <- function(tbl, cols) {
  if (length(cols) %% 2 != 0) {
    stop("Make sure your columns are a list that contains pairs of entries like
         '[COLUMN NAME], [COLUMN VALUES],' and so on.")   # Error handling
  } else if (length(cols) <= 2) {
    return(with_column(tbl, cols))
  } else {
    tbl_with_column <- with_column(tbl, cols)
    with_columns(tbl_with_column, cols[3:length(cols)])
  }
}
