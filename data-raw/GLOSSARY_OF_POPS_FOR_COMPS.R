## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_POPS_FOR_COMPS <- tibble::tribble(
    ~ Comparison,     ~ Gender, ~ Population,
    "SES",            "All",    "All Students",
    "SES",            "All",    "English Language Learner",
    "SES",            "All",    "Low Income",
    "Gender",         "Female", "All Students",
    "Gender",         "Male",   "All Students",
    "Race/Ethnicity", "All",    "American Indian or Alaska Native",
    "Race/Ethnicity", "All",    "Asian",
    "Race/Ethnicity", "All",    "Black or African American",
    "Race/Ethnicity", "All",    "Hispanic or Latine",
    "Race/Ethnicity", "All",    "Multi-Racial",
    "Race/Ethnicity", "All",    "Native Hawaiian or Pacific Islander",
    "Race/Ethnicity", "All",    "Other Race",
    "Race/Ethnicity", "All",    "White"
)


usethis::use_data(GLOSSARY_OF_POPS_FOR_COMPS, overwrite = TRUE)
