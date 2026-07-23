## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_FOR_ACS_EMPLOYMENT <- tibble::tribble(
    ~ Group, ~ Index, ~ Gender, ~ Population,
    "B03002",     2L, "All",    "All Students",
    "B03002",     3L, "All",    "White",
    "B03002",     4L, "All",    "Black or African American",
    "B03002",     5L, "All",    "American Indian or Alaska Native",
    "B03002",     6L, "All",    "Asian",
    "B03002",     7L, "All",    "Native Hawaiian or Pacific Islander",
    "B03002",     8L, "All",    "Other Race",
    "B03002",     9L, "All",    "Multi-Racial",
    "B03002",    13L, "All",    "Hispanic or Latine",
    "B03002",    14L, "All",    "Multi-Racial",
    "B03002",    15L, "All",    "Hispanic or Latine",
    "B03002",    16L, "All",    "Hispanic or Latine",
    "B03002",    17L, "All",    "Hispanic or Latine",
    "B03002",    18L, "All",    "Hispanic or Latine",
    "B03002",    19L, "All",    "Multi-Racial",
    "B01001",     2L, "Male",   "All Students",
    "B01001",    26L, "Female", "All Students",
    "B17026",     1L, NA,       "All Households",
    "B17026",    11L, NA,       "Family-sustaining Households",
    "B17026",    12L, NA,       "Family-sustaining Households",
    "B17026",    13L, NA,       "Family-sustaining Households"
)

usethis::use_data(GLOSSARY_FOR_ACS_EMPLOYMENT, overwrite = TRUE)
