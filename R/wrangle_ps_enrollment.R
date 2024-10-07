#' Convert raw data read from WISEDash Public files into a StriveTogether-friendly format
#'
#' @param .ps_data a data frame in the format returned by [read_wisedash_public()]
#' @param .district optional, the code for one district, defaults to Racine Unified's code.
#'
#' @return a tibble with six columns: Outcome, Year, Gender, Population, Role, and Value
#' \describe{
#'   \item{SCHOOL_YEAR}{<chr> the school year in YYYY-YYYY format}
#'   \item{Population}{<chr> a demographic category defined by StriveTogether}
#'   \item{Gender}{<chr> a gender identity recognized by StriveTogether}
#'   \item{Postsecondary Enrollees}{<int> the number of students who have ever enrolled in a postsecondary program}
#'   \item{HS Completers}{<int> the number of students who enrolled in a postsecondary program in the first fall after they graduated}
#' }
#' @export
#' @seealso [read_wisedash_public()]
wrangle_ps_enrollment <- function(.ps_data, .district = "4620") {
    .ps_data |>
        dplyr::filter(
            .data$INITIAL_ENROLLMENT == "First Fall",
            .data$DISTRICT_CODE == .district,
            is.na(.data$SCHOOL_CODE)
        ) |>
        dplyr::count(
            Year = .data$SCHOOL_YEAR,
            .data$Population,
            .data$Gender,
            D = .data$GROUP_COUNT,
            wt = .data$STUDENT_COUNT,
            name = "N"
        ) |>
        tidyr::pivot_longer(
            cols = c("N", "D"),
            names_to = "Role",
            values_to = "Value"
        )
}
