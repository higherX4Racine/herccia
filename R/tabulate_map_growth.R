#' Count how many students met MAP growth expectations, using custom groups
#'
#' @param .x <data.frame> the MAP growth data to tabulate
#' @param ... <[`dynamic-dots`][rlang::dyn-dots]> names of columns to group by
#'
#' @return a data frame with the ... fields, "Met", "Students", and "Percent"
#' @export
tabulate_map_growth <- function(.x, ...){

    .columns = as.character(rlang::list2(...))

    if (length(.columns)) {
        .y <- dplyr::count(.x,
                           dplyr::across(.columns),
                           .data$`Test Growth Result`
        )
    } else {
        .y <- dplyr::count(.x,
                           .data$`Test Growth Result`)
    }

    .y |>
        tidyr::pivot_wider(
            names_from = "Test Growth Result",
            values_from = "n",
            values_fill = 0
        ) |>
        dplyr::mutate(
            D = .data$`Did Not Meet Growth` + .data$`Met Growth`
        ) |>
        dplyr::select(
            tidyselect::all_of(.columns),
            N = "Met Growth",
            "D"
        )
}
