## Copyright (C) 2025 by Higher Expectations for Racine County

SEMI_JOINS_FOR_IPEDS <- tibble::tribble(
    ~ Status,          ~ `Relative Time`, ~ `Credential Earned`,
    "Adjusted Cohort", NA,                NA,
    "Completed",       "<=150%",          "Any"
)

usethis::use_data(SEMI_JOINS_FOR_IPEDS, overwrite = TRUE)
