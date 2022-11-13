test_that(
  "The spectral_signature() returns a data frame.",
  {
    data(ukb_accel)
    test_data_frame <-  ukb_accel[1:100, ] |>
      spectral_signature()
    expect_s3_class(test_data_frame, "data.frame")
  }
)

test_that(
  "The spectral_signature() with take_log = TRUE takes log.",
  {
    data(ukb_accel)
    test_with_log_false <- ukb_accel[1:100, ] |>
      spectral_signature() |>
      select(X, Y, Z) |>
      log()
    test_with_log_true <-  ukb_accel[1:100, ] |>
      spectral_signature(take_log = TRUE) |>
      select(X, Y, Z)
    expect_equal(test_with_log_false, test_with_log_true)
  }
)
