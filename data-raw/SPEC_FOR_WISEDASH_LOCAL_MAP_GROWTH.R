## code to prepare `SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH` dataset goes here

SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH <- list(
    `Student ID` = readr::col_integer(),
    Name = readr::col_character(),
    Status = readr::col_character(),
    `Current School` = readr::col_character(),
    `Curr. Grade` = readr::col_character(),
    Gender = readr::col_character(),
    `Race/Ethnicity` = readr::col_character(),
    EL = readr::col_character(),
    SPED = readr::col_character(),
    `Test Growth Result` = readr::col_character(),
    `Test Growth Period` = readr::col_character(),
    Year = readr::col_character(),
    `Test Growth Percentile` = readr::col_integer()
)

usethis::use_data(SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH, overwrite = TRUE)
