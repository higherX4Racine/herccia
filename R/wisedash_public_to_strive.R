#' Wrangle WISEDash Public data into a format ready for the CIA
#'
#' @param .x data from WISEDash public, either HS graduation or PS enrollment
#' @param .outcome_name either "HS Graduation" or "Post-secondary Enrollment"
#' @param .group_name optional, defaults to "GROUP_COUNT" but HS Completion uses
#'   "COHORT_COUNT"
#'
#' @return a data frame with columns "Outcome", "Year", "Gender", "Population",
#'   "Role", and "Value"
#' @export
wisedash_public_to_strive <- function(.x, .outcome_name, .group_name = "GROUP_COUNT"){
    .x |>
        dplyr::group_by(
            Outcome = .outcome_name,
            Year = .data$SCHOOL_YEAR,
            .data$Gender,
            .data$Population
        ) |>
        dplyr::summarize(
            N = sum(.data$STUDENT_COUNT, na.rm = TRUE),
            D = max(.data[[.group_name]], na.rm = TRUE),
            .groups = "drop"
        ) |>
        dplyr::filter(
        ) |>
        dplyr::select(
            "Outcome",
            "Year",
            "Gender",
            "Population",
            "N",
            "D"
        ) |>
        tidyr::pivot_longer(
            cols = c("N", "D"),
            names_to = "Role",
            values_to = "Value"
        )
}
