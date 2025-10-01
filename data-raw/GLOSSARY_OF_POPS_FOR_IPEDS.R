## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_POPS_FOR_IPEDS <- dplyr::cross_join(
    tibble::tribble(
        ~ Sex,       ~ Gender,
        "all",      "All",
        "women",    "Female",
        "men",      "Male"
    ),
    tibble::tribble(
        ~ `Race/Ethnicity`,                 ~ Population,
        "All",                              "All Students",
        "American Indian or Alaska Native", "American Indian or Alaska Native",
        "Asian",                            "Asian",
        "Black",                            "Black or African American",
        "Direct Subsidized Loan",           "Low Income",
        "Hispanic",                         "Hispanic or Latine",
        "Multiracial",                      "Multi-Racial",
        "Pacific Islander",                 "Native Hawaiian or Pacific Islander",
        "Pell Grant",                       "Low Income",
        "Unknown",                          "Other Race",
        "White",                            "White"
    )
)

usethis::use_data(GLOSSARY_OF_POPS_FOR_IPEDS, overwrite = TRUE)

