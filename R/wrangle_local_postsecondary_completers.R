#' Wrangle raw IPEDS graduation data for local schools into the local 150% postsecondary completion rate
#'
#' @param .ipeds_grad_data a data frame with GR data a la [`hercipeds::read_graduation_rates()`]
#' @param .unit_ids the UNITID codes for all of the local schools
#'
#' @return a data frame ready for [`to_wide_cia_format()`]
#' @export
wrangle_local_postsecondary_completers <- function(.ipeds_grad_data, .unit_ids) {
    .ipeds_grad_data |>
        dplyr::inner_join(
            tibble::tibble(UNITID = .unit_ids),
            by = "UNITID"
        ) |>
        dplyr::inner_join(
            tibble::tribble(
                ~ Status,          ~ `Relative Time`, ~ `Credential Earned`,
                "Adjusted Cohort", NA,                NA,
                "Completed",       "<=150%",          "Any"
            ),
            by = c("Status", "Relative Time", "Credential Earned")
        ) |>
        dplyr::filter(
            .data$`Credential Sought` != "Any"
        ) |>
        dplyr::inner_join(
            herccia::IPEDS_POPULATIONS,
            by = c("Sex", "Race/Ethnicity")
        ) |>
        dplyr::count(
            .data$Year,
            .data$Gender,
            .data$Population,
            Role = dplyr::case_match(.data$Status,
                                     "Adjusted Cohort" ~ "D",
                                     "Completed" ~ "N"),
            wt = .data$Count,
            name = "Value"
        )
}
