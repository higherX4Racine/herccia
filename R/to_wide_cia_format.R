#' Reformat a long data frame into the CIA format
#'
#' @param .long_data some data with disaggregated outcomes in long format
#' @param .year the year of the CIA
#'
#' @return a tibble with columns grouped by year, numerator, and denominator
#' @export
to_wide_cia_format <- function(.long_data, .year) {
    herccia::OUTPUT_POPULATIONS |>
        dplyr::filter(
            .data$`CIA Year` == .year
        ) |>
        dplyr::select(
            !tidyselect::any_of(c("CIA Year"))
        ) |>
        dplyr::left_join(
            .long_data |>
                dplyr::mutate(
                    Value = dplyr::if_else(.data$Value == 0, NA, .data$Value)
                ) |>
                dplyr::arrange(
                    dplyr::desc(.data$Year)
                ) |>
                tidyr::pivot_wider(
                    names_from = "Role",
                    values_from = "Value",
                    values_fill = NA
                ) |>
                tidyr::pivot_wider(
                    names_from = "Year",
                    values_from = c("N", "D"),
                    names_sep = " ",
                    values_fill = NA,
                    names_vary = "slowest"
                ),
            by = c("Gender", "Population")
        )
}
