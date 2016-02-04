#' test_environment.R
#'
#' Test functions related to loading handling application environment.

library(yaml)

test_that("can load a simple environment file", {
  x <- yaml.load_file(file.path(system.file("tests", "data", package = "arcticdata"), "test_environment.yml"))

  expect_true(length(x) == 3)
  expect_true(length(setdiff(c("development", "test", "production"), names(x))) == 0)
})


test_that("an environment string can be returned", {
  expect_is(env_get(), "character")
  expect_true(nchar(env_get()) > 0)
})