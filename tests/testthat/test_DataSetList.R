context("Basic DataSetList functionality")

test_that("Can DataSetLists be loaded?",{
  expect_true(any(match(class(dsl), "DataSetList")))
  expect_true(any(match(class(dsl[[1]]), "DataSet")))
})

test_that("Validate reading of files",{
  path <- system.file("extdata", "ONE_PLUS_LAMDA_EA", package="IOHanalyzer")
  expect_equal(check_format(path), "IOHprofiler")
  #TODO: remove warnings occuring when loading datasetlist before enabling these tests
  # dsl1 <- DataSetList(path)
  #
  # expect_true(any(match(class(dsl1), "DataSetList")))
  # expect_equal(get_dim(dsl1), 100)
  # expect_equal(get_algId(dsl1), "ONE_PLUS_LAMDA_EA")
  # expect_equal(get_funcId(dsl1), 1)
  #
  # ds1 <- dsl1[[1]]
  # expect_true(any(match(class(ds1), "DataSet")))
  # expect_equal(attr(ds1,'DIM'), 100)
  # expect_equal(attr(ds1,'algId'), "ONE_PLUS_LAMDA_EA")
  # expect_equal(attr(ds1,'suite'), "PBO")
  # expect_equal(attr(ds1,'funcId'), 1)
  # expect_equal(attr(ds1,'instance'), c(1,1,1,1,1,1,1,1,1,1))
  # expect_equal(attr(ds1,'src'), "IOHprofiler")
  # expect_equal(attr(ds1,'maximization'), TRUE)
})

test_that("Validate overview, summary and sample functions",{
  expect_equal(get_FV_summary(dsl[1], 12)$"98%", 14)
  expect_equal(get_FV_summary(dsl[[1]], 12)$"98%", 14)
  expect_equal(get_RT_summary(dsl[1], 12)$"98%", 21)
  expect_equal(get_RT_summary(dsl[[1]], 12)$"98%", 21)
  expect_equal(get_FV_overview(dsl[1])$"mean reached f(x)", 16)
  expect_equal(get_FV_overview(dsl[[1]])$"mean reached f(x)", 16)
  expect_equal(get_RT_overview(dsl[[1]])$"runs", 11)
  expect_equal(get_RT_overview(dsl[1])$"runs", 11)
  expect_equal(get_FV_sample(dsl[[1]],12)$"run.5",13)
  expect_equal(get_FV_sample(dsl[1],12)$"run.5",13)
  expect_equal(get_RT_sample(dsl[[1]],12)$"run.5",10)
  expect_equal(get_RT_sample(dsl[1],12)$"run.5",10)
  expect_equal(min(get_funvals(dsl[1])),5)
  expect_equal(min(get_runtimes(dsl[1])),1)
})
