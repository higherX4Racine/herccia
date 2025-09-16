## Copyright (C) 2025 by Higher Expectations for Racine County

SEMI_JOINS_FOR_FORWARD <- tibble::tribble(
    ~ TEST_GROUP, ~ GRADE_LEVEL, ~ TEST_SUBJECT,
    "Forward",    3L,            "ELA",
    "Forward",    8L,            "Mathematics"
)

usethis::use_data(SEMI_JOINS_FOR_FORWARD, overwrite = TRUE)
