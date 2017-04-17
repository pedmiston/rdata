library(rdata)

context("Searching for datasets in packages")

test_that("AirPassengers shows up in list of datasets", {
  expect_true("AirPassengers" %in% list_datasets("datasets"))
})
