test_that(
  "The accel_plot() returns a ggplot object.",
  {
    data(ukb_accel)
    p <- accel_plot(ukb_accel[1:100, ])
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The accel_plot() errors when no time or freq column.",
  {
    data(iris)
    expect_error(accel_plot(iris))
  }
)

test_that(
  "The accel_plot() is correct for time-series data.",
  {
    data(ukb_accel)
    p <- accel_plot(ukb_accel[1:100, ])
    vdiffr::expect_doppelganger("first-100-samples-with-time", p)
  }
)

test_that(
  "The accel_plot() is correct for a data frame with a frequency column.",
  {
    data(ukb_accel)
    test_freq <- accel_plot(spectral_signature(ukb_accel[1:100, ]))
    vdiffr::expect_doppelganger("first-100-samples-with-freq", test_freq)
  }
)
