#' Wrangle raw IPEDS graduation data for local schools into the local 150% postsecondary completion rate
#'
#' @param .DATA a data frame with GR data a la [`hercipeds::read_graduation_rates()`]
#' @param .unit_ids the UNITID codes for all of the local schools
#'
#' @return a data frame ready for [`to_wide_cia_format()`]
#' @export
wrangle_local_postsecondary_completers <- function(.DATA, .unit_ids) {
    .DATA |>
        dplyr::inner_join(
            tibble::tibble(UNITID = .unit_ids),
            by = "UNITID"
        ) |>
        dplyr::inner_join(
            herccia::SEMI_JOINS_FOR_IPEDS,
            by = c("Status", "Relative Time", "Credential Earned")
        ) |>
        dplyr::filter(
            .data$`Credential Sought` != "Any"
        ) |>
        dplyr::inner_join(
            herccia::GLOSSARY_OF_POPS_FOR_IPEDS,
            by = c("Sex", "Race/Ethnicity")
        )
}


#|>
#    dplyr::inner_join(
#        herccia::GLOSSARY_OF_POPS_FOR_IPEDS,
#        by = c("Sex", "Race/Ethnicity")
#    ) |>
#    dplyr::semi_join(
#        herccia::SEMI_JOINS_FOR_IPEDS,
#        by = c("Status", "Relative Time", "Credential Earned")
#    ) |>
#    dplyr::filter(
#        .data$`Credential Sought` != "Any"
#    ) |>
#    dplyr::summarize(
#        Count = sum(.data$Count, na.rm = TRUE),
#        .by = c("UNITID",
#                "Year",
#                "Status",
#                "Gender",
#                "Population")
#    ) |>
#    tidyr::pivot_wider(
#        names_from = "Status",
#        values_from = "Count",
#        values_fill = 0
#    ) |>
#    dplyr::left_join(
#        herccia::GLOSSARY_OF_POPS_FOR_COMPS,
#        by = c("Gender", "Population")
#    ) |>
#    dplyr::rename(
#        START_YEAR = "Year",
#        Students = "Adjusted Cohort",
#        Completers = "Completed"
#    )
#
