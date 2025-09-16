## Copyright (C) 2025 by Higher Expectations for Racine County

.GENDER <- tibble::tribble(
    ~ Gender, ~ `Gender Pattern`,
    "All",    ".",
    "Female", "Female",
    "Male",   "Male"
)

.POPULATION <- tibble::tribble(
    ~ Population,                           ~ `Race Pattern`, ~ `EL Pattern`, ~ `SES Pattern`,
    "All Students",	                        ".",         	  ".",            ".",
    "American Indian or Alaska Native",	    "American",       ".",            ".",
    "Asian",                                "Asian",          ".",            ".",
    "Black or African American",	        "Black",          ".",            ".",
    "Hispanic or Latine",	                "Hispanic",       ".",            ".",
    "Middle Eastern or North African",	    "Middle",         ".",            ".",
    "Native Hawaiian or Pacific Islander",	"Native",         ".",            ".",
    "White",	                            "White",          ".",            ".",
    "Multi-Racial",	                        "Multiple",	      ".",            ".",
    "Other Race",	                        "Other",          ".",            ".",
    "Low Income",	                        ".",              ".",            "Yes",
    "English Language Learner",	            ".",              "Yes",          ".",
)

SEMI_JOINS_FOR_WISEDASH_LOCAL <- .GENDER |>
    tidyr::expand_grid(
        .POPULATION
    ) |>
    dplyr::mutate(
        dplyr::across(tidyselect::ends_with("Pattern"),
                      \(.string) paste0("^", .string))
    ) |>
    dplyr::relocate(
        "Gender",
        "Population"
    )

usethis::use_data(SEMI_JOINS_FOR_WISEDASH_LOCAL, overwrite = TRUE)
