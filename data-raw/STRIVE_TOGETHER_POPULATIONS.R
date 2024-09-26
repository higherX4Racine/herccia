STRIVE_TOGETHER_POPULATIONS <- tibble::tribble(
    ~ `Strive`,                            ~ `Census Race/Ethnicity`,                       ~ `WISEDash Public`, ~ `WISEDash Local`,
    "All Students",                        NA,                                                 NA,                  NA,
    "American Indian or Alaska Native",    "AMERICAN INDIAN ALASKA NATIVE ALONE",              "Amer Indian",       NA,
    "Asian",                               "ASIAN ALONE",                                      NA,                  NA,
    "Black or African American",           "BLACK OR AFRICAN AMERICAN ALONE",                  "Black",             NA,
    "Hispanic or Latine",                  "HISPANIC OR LATINO",                               "Hispanic",          "Hispanic",
    "Native Hawaiian or Pacific Islander", "NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE", "Pacific Isle",      "Native Hawaiian or Other Pacific Islander",
    "White",                               "WHITE ALONE, NOT HISPANIC OR LATINO",              NA,                  NA,
    "Multi-Racial",                        "TWO OR MORE RACES",                                "Two or More",       "Multiple",
    "Other Race",                          "SOME OTHER RACE ALONE",                            "Unknown",           NA,
    "Low Income",                          NA,                                                 "Econ Disadv",       NA,
    "English Language Learner",            NA,                                                 "EL",                NA
) |>
    dplyr::mutate(
        dplyr::across(!"Strive",
                      ~ dplyr::coalesce(., .data$Strive)),
        Strive = forcats::fct_inorder(.data$Strive)
    )

usethis::use_data(STRIVE_TOGETHER_POPULATIONS, overwrite = TRUE)
