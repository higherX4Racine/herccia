STRIVE_TOGETHER_POPULATIONS <- tibble::tribble(
    ~ `Strive`,                            ~ `WISEDash Public`, ~ `WISEDash Local`,
    "All Students",                        NA,                  NA,
    "American Indian or Alaska Native",    "Amer Indian",       NA,
    "Asian",                               NA,                  NA,
    "Black or African American",           "Black",             NA,
    "Hispanic or Latine",                  "Hispanic",          "Hispanic",
    "Native Hawaiian or Pacific Islander", "Pacific Isle",      "Native Hawaiian or Other Pacific Islander",
    "White",                               NA,                  NA,
    "Multi-Racial",                        "Two or More",       "Multiple",
    "Other Race",                          "Unknown",           NA,
    "Low Income",                          "Econ Disadv",       NA,
    "English Language Learner",            "EL",                NA
) |>
    dplyr::mutate(
        dplyr::across(!"Strive",
                      ~ dplyr::coalesce(., .data$Strive)),
        Strive = forcats::fct_inorder(.data$Strive)
)

usethis::use_data(STRIVE_TOGETHER_POPULATIONS, overwrite = TRUE)
