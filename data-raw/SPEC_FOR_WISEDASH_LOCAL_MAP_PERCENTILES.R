## code to prepare `SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES` dataset goes here

SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES <- list(
    `Student ID` = readr::col_integer(),
    Name = readr::col_character(),
    Status = readr::col_character(),
    `Current School` = readr::col_character(),
    `Curr. Grade` = readr::col_character(),
    Gender = readr::col_character(),
    `Race/Ethnicity` = readr::col_character(),
    EL = readr::col_character(),
    SPED = readr::col_character(),
    `Test Name` = readr::col_skip(),
    `Admin Period` = readr::col_skip(),
    `Percentile Score` = readr::col_character(),
    `Percentile` = readr::col_double(),
    `Norm Lvl` = readr::col_skip(),
    `Predicted Forward Score` = readr::col_skip(),
    `School Year` = readr::col_character()
)

usethis::use_data(SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES, overwrite = TRUE)
