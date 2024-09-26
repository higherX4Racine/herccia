#' Convert raw data read from WISEDash Public files into a StriveTogether-friendly format
#'
#' @param .hs_data a data frame in the format returned by [read_wisedash_public()]
#' @param .district optional, the code for one district, defaults to Racine Unified's code.
#'
#' @return a tibble with five columns:
#' \describe{
#'   \item{SCHOOL_YEAR}{<chr> the school year in YYYY-YYYY format}
#'   \item{Population}{<chr> a demographic category defined by StriveTogether}
#'   \item{Gender}{<chr> a gender identity recognized by StriveTogether}
#'   \item{Senior Class Size}{<int> the number of students who could have graduated by the end of the school year}
#'   \item{HS Completers}{<int> the number of students who received a high school credential by the end of the school year}
#' }
#' @export
#' @seealso [read_wisedash_public()]
wrangle_hs_graduation <- function(.hs_data, .district = "4620") {
    .hs_data |>
        dplyr::filter(
            .data$TIMEFRAME == "4-Year rate",
            .data$DISTRICT_CODE == .district,
            is.na(.data$SCHOOL_CODE),
            stringr::str_detect(.data$COMPLETION_STATUS,
                                stringr::regex("^Completed",
                                               ignore_case = TRUE))
        ) |>
        dplyr::count(
            .data$SCHOOL_YEAR,
            .data$Population,
            .data$Gender,
            `Senior Class Size` = .data$COHORT_COUNT,
            wt = .data$STUDENT_COUNT,
            name = "HS Completers"
        )
}
