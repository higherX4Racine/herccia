SPEC_FOR_WISEDASH_HS_COMPLETION <- list(
    SCHOOL_YEAR = readr::col_character(),
    AGENCY_TYPE = readr::col_character(),
    CHARTER_IND = readr::col_character(),
    CESA = readr::col_character(),
    COUNTY = readr::col_character(),
    DISTRICT_CODE = readr::col_character(),
    SCHOOL_CODE = readr::col_character(),
    GRADE_GROUP = readr::col_character(),
    DISTRICT_NAME = readr::col_character(),
    SCHOOL_NAME = readr::col_character(),
    COHORT = readr::col_integer(),
    COMPLETION_STATUS = readr::col_character(),
    GROUP_BY = readr::col_character(),
    GROUP_BY_VALUE = readr::col_character(),
    TIMEFRAME = readr::col_character(),
    COHORT_COUNT = readr::col_integer(),
    STUDENT_COUNT = readr::col_integer()
)

usethis::use_data(SPEC_FOR_WISEDASH_HS_COMPLETION, overwrite = TRUE)

