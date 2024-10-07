## code to prepare `CENSUS_POPULATIONS` dataset goes here


CENSUS_POPULATIONS <- tibble::tribble(
    ~ Category,                                         ~ Population,
    "AMERICAN INDIAN AND ALASKA NATIVE ALONE",          "American Indian or Alaska Native",
    "ASIAN ALONE",                                      "Asian",
    "BLACK OR AFRICAN AMERICAN ALONE",                  "Black or African American",
    "Below",                                            "Low Income",
    "ELL",                                              "English Language Learner",
    "HISPANIC OR LATINO",                               "Hispanic or Latine",
    "NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE", "Native Hawaiian or Pacific Islander",
    "SOME OTHER RACE ALONE",                            "Other Race",
    "TOTAL",                                            "All Students",
    "TWO OR MORE RACES",                                "Multi-Racial",
    "WHITE ALONE, NOT HISPANIC OR LATINO",              "White",
    NA,                                                 "Middle Eastern or North African",
)

usethis::use_data(CENSUS_POPULATIONS, overwrite = TRUE)
