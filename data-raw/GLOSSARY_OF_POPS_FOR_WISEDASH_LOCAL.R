# Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_POPS_FOR_WISEDASH_LOCAL <- tibble::tribble(
    ~ GROUP_BY,       ~ GROUP_BY_VALUE,                            ~ Gender, ~ Population,
    "EL",             "No",                                        NA,       NA,
    "EL",             "Yes",                                       "All",    "English Language Learner",
    "Gender",         "Female",                                    "Female", "All Students",
    "Gender",         "Male",                                      "Male",   "All Students",
    "Race/Ethnicity", "American Indian or Alaska Native",          "All",    "American Indian or Alaska Native",
    "Race/Ethnicity", "Asian",                                     "All",    "Asian",
    "Race/Ethnicity", "Black or African American",                 "All",    "Black or African American",
    "Race/Ethnicity", "Hispanic",                                  "All",    "Hispanic or Latine",
    "Race/Ethnicity", "Multiple",                                  "All",    "Multi-Racial",
    "Race/Ethnicity", "Native Hawaiian or Other Pacific Islander", "All",    "Native Hawaiian or Pacific Islander",
    "Race/Ethnicity", "White",                                     "All",    "White",
    "SPED",           "No",                                        "All",    NA,
    "SPED",           "Yes",                                       "All",    NA,
    "All Students",   "All Students",                              "All",    "All Students"
)


usethis::use_data(GLOSSARY_OF_POPS_FOR_WISEDASH_LOCAL, overwrite = TRUE)
