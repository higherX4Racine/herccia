#' Count how many students met MAP percentile expectations, using custom groups
#'
#' @param .x <data.frame> the MAP percentile data to tabulate
#' @param ... <[`dynamic-dots`][rlang::dyn-dots]> names of columns to group by
#'
#' @return a data frame with the ... fields, "N" (proficient), and "D"  (cohort)
#' @export
tabulate_map_percentile <- function(.x, ...){

    .x |>
        dplyr::mutate(
            Performance = dplyr::if_else(.data$Percentile > 100/3,
                                         "Proficient",
                                         "Not proficient")
        ) |>
        dplyr::count(
            dplyr::across(tidyselect::all_of(c(..., "Performance")))
        ) |>
        tidyr::pivot_wider(
            names_from = "Performance",
            values_from = "n",
            values_fill = 0
        ) |>
        dplyr::mutate(
            D = .data$Proficient + .data$`Not proficient`
        ) |>
        dplyr::select(
            tidyselect::all_of(c(...)),
            N = "Proficient",
            "D"
        )
}
