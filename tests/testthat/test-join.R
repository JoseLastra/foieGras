context("test join")

## join returns either a sf object or a tibble
data(xs)
data(xm)

p <- join(xs, xm)
test_that("p has s3 classes `fG_ssmp`, `sf`, `data.frame`", {
  expect_s3_class(p, c("fG_ssmp", "sf", "data.frame"))
})

p <- join(xs, xm, as_sf = FALSE)
test_that("p has s3 classes `fG_ssmp`, `tbl_df`, `tbl`, `data.frame`", {
  expect_s3_class(p, c("fG_ssmp", "tbl_df", "tbl", "data.frame"))
})

test_that("join catches non fG_ssm class in ssm input", {
  expect_error(join(grab(xs, "p"), xm, as_sf = FALSE), "ssm must be a foieGras ssm fit object with class `fG_ssm`")
})

test_that("join catches non fG_mpm class in mpm input", {
  expect_error(join(xs, grab(xm, "f"), as_sf = FALSE), "mpm must be a foieGras mpm fit object with class `fG_mpm`")
})

test_that("join catches unequal rows in input", {
  expect_error(join(xs[1,], xm, as_sf = FALSE), "number of rows in ssm is NOT equal to number of rows in mpm")
})