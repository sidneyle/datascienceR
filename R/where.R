#' Subsetting by rows
#'
#' Returns a subset table of the original table, based on some logical
#' statement.
#' @param tbl the input table
#' @param col the name of the column that contains values to subset on
#' @param fun a string containing the logical statement
#' @param val the value to subset by
#' @keywords Table, columns
#' @export
#' @examples
#' Table() %>%
#'    with_columns(list("ColumnA", c(1, 2, 3), "ColumnB", c(3, 2, 1))) %>%
#'    where("ColumnA", "above", 1)
#'

where <- function(tbl, col, fun = "equal to", val) {
  if (fun == "equal to") {
    return(tbl[tbl$col == val])
  }
}
