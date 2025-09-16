#' Reformat a long data frame into the CIA format
#'
#' @param .long_data `<tbl>` with columns "Year", "Gender", "Population", "N", and "D".
#' @param .year the year of the CIA
#'
#' @return a tibble with columns grouped by year, numerator, and denominator
#' @export
to_wide_cia_format <- function(.long_data, .year) {
    herccia::GLOSSARY_OF_POPS_FOR_CIA |>
        dplyr::filter(
            .data$`CIA Year` == .year
        ) |>
        dplyr::select(
            !tidyselect::any_of(c("CIA Year"))
        ) |>
        dplyr::left_join(
            .long_data |>
                dplyr::mutate(
                    dplyr::across(c("N", "D"),
                                  \(.) dplyr::if_else(. == 0, NA, .))
                ) |>
                dplyr::arrange(
                    dplyr::desc(.data$Year)
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
