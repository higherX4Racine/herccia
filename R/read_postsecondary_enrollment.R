#' Parse post-secondary enrollment data from WISEDash Public into a CIA-friendly format
#'
#' @param .files a series of paths to csv files that contain PS Enrollment data from WISEDash public
#'
#' @return a data frame with some WISEDash Public columns and some CIA columns
#' @export
read_postsecondary_enrollment <- function(.files){
    purrr::map(.files,
               ~ readr::read_csv(
                   .,
                   col_types = list(
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
                       INITIAL_ENROLLMENT = readr::col_character(),
                       INSTITUTION_LOCATION = readr::col_character(),
                       INSTITUTION_LEVEL = readr::col_character(),
                       INSTITUTION_TYPE = readr::col_character(),
                       GROUP_BY = readr::col_character(),
                       GROUP_BY_VALUE = readr::col_character(),
                       GROUP_COUNT = readr::col_integer(),
                       STUDENT_COUNT = readr::col_integer()
                   ),
                   na = c("", "*")
               )
    ) |>
        purrr::list_rbind() |>
        dplyr::filter(
            .data$INITIAL_ENROLLMENT == "First Fall"
        ) |>
        dplyr::inner_join(
            herccia::WISEDASH_POPULATIONS,
            by = "GROUP_BY_VALUE"
        ) |>
        tidyr::separate_wider_regex(
            "SCHOOL_YEAR",
            c(fall = "\\d{4}",
              "-",
              spring = "\\d{2}")
        ) |>
        dplyr::mutate(
            SCHOOL_YEAR = glue::glue("{.data$fall}-20{.data$spring}")
        ) |>
        dplyr::select(
            !tidyselect::any_of(c("fall", "spring"))
        )
}
