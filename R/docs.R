#' List the datasets in a package.
#' @export
list_datasets <- function(package) {
  data(package = package)$results[, "Item"]
}
