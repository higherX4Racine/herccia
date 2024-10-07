## code to prepare `IPEDS_POPULATIONS` dataset goes here

IPEDS_POPULATIONS <- dplyr::cross_join(
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
        "Hispanic",                         "Hispanic or Latine",
        "Multiracial",                      "Multi-Racial",
        "Pacific Islander",                 "Native Hawaiian or Pacific Islander",
        "Unknown",                          "Other Race",
        "White",                            "White"
    )
)

usethis::use_data(IPEDS_POPULATIONS, overwrite = TRUE)

