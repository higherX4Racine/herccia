## Copyright (C) 2025 by Higher Expectations for Racine County

STRIVE_TOGETHER_FORWARD <- tibble::tribble(
    ~ TEST_GROUP, ~ GRADE_LEVEL, ~ TEST_SUBJECT,
    "Forward",    3L,            "ELA",
    "Forward",    8L,            "Mathematics"
)

usethis::use_data(STRIVE_TOGETHER_FORWARD, overwrite = TRUE)
