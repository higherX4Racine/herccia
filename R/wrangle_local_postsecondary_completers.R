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
            herccia::STRIVE_TOGETHER_IPEDS,
            by = c("Status", "Relative Time", "Credential Earned")
        ) |>
        dplyr::filter(
            .data$`Credential Sought` != "Any"
        ) |>
        dplyr::inner_join(
            herccia::IPEDS_POPULATIONS,
            by = c("Sex", "Race/Ethnicity")
        )
}
