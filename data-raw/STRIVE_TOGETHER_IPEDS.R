## Copyright (C) 2025 by Higher Expectations for Racine County

STRIVE_TOGETHER_IPEDS <- tibble::tribble(
    ~ Status,          ~ `Relative Time`, ~ `Credential Earned`,
    "Adjusted Cohort", NA,                NA,
    "Completed",       "<=150%",          "Any"
)

usethis::use_data(STRIVE_TOGETHER_IPEDS, overwrite = TRUE)
