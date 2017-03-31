#' Util function for loading a directory of csvs
#' and assigning the resulting data frames with
#' prefixed names.
#'
#' @export
read_csvs <- function(directory, prefix = "", stem_func = function(x) x) {
  for (csv in list.files(directory, pattern = "*.csv", full.name = TRUE)) {
    stem <- file_stem(csv) %>% stem_func()
    assign(paste0(prefix, stem), readr::read_csv(csv), envir = globalenv())
  }
}
