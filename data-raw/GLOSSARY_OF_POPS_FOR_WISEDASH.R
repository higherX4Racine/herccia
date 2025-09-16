# Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_POPS_FOR_WISEDASH <- tibble::tribble(
    ~ GROUP_BY,        ~ GROUP_BY_VALUE, ~ Gender, ~ Population,
    "All Students",    "All Students",   "All",    "All Students",
    "Gender",          "Female",         "Female", "All Students",
    "Gender",          "Male",           "Male",   "All Students",
    "Race/Ethnicity",  "Amer Indian",    "All",    "American Indian or Alaska Native",
    "Race/Ethnicity",  "Asian",          "All",    "Asian",
    "Race/Ethnicity",  "Black",          "All",    "Black or African American",
    "EL Status",       "EL",             "All",    "English Language Learner",
    "ELL Status",      "ELL/LEP",        "All",    "English Language Learner",
    "Race/Ethnicity",  "Hispanic",       "All",    "Hispanic or Latine",
    "Economic Status", "Econ Disadv",    "All",    "Low Income",
    "Race/Ethnicity",  "Two or More",    "All",    "Multi-Racial",
    "Race/Ethnicity",  "Pacific Isle",   "All",    "Native Hawaiian or Pacific Islander",
    "Race/Ethnicity",  "Unknown",        "All",    "Other Race",
    "Race/Ethnicity",  "White",          "All",    "White"
)

usethis::use_data(GLOSSARY_OF_POPS_FOR_WISEDASH, overwrite = TRUE)
