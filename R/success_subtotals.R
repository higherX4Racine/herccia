#' Count up successes and failures based upon
#'
#' @param .x a data frame with at least one true/false column and at least one demographic column
#' @param .success_field the column with true/false values that designate succes
#' @param ... <[`dynamic-dots`][rlang::dyn-dots]> names of columns to group by
#'
#' @return a new data frame with `...`, "N" (the count of successes), and "D" (the size of the cohort)
#' @export
success_subtotals <- function(.x, .success_field, ...) {
    .x |>
        dplyr::count(
            dplyr::across(tidyselect::all_of(c(...))),
            `e968aeac-9704-4ef2-8517-94617d698768` = dplyr::if_else(.data[[.success_field]],
                                                                    "N",
                                                                    "X")
        ) |>
        tidyr::pivot_wider(
            names_from = "e968aeac-9704-4ef2-8517-94617d698768",
            values_from = "n",
            values_fill = 0
        ) |>
        dplyr::mutate(
            D = .data$N + .data$X
        ) |>
        dplyr::select(
            tidyselect::all_of(c(...)),
            "N",
            "D"
        )

}
