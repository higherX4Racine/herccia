#' Import data from WISEDash Local into a CIA-friendly format
#'
#' @param .files an array of paths to csv files that contain data from WISEDash Local
#' @param .spec a list of column specifications for [readr::read_csv()]
#' @param .success_column the column to examine for success
#' @param .pred a predicate function for determining success
#' @param ... <[`dynamic-dots`][rlang::dyn-dots]> Any additional grouping columns (using [tidyselect::select_helpers])
#'
#' @return a data frame with some WISEDash Local columns and some CIA columns
#' @export
read_wisedash_local <- function(.files, .spec, .success_column, .pred, ...){
    .files |>
        purrr::map(
            \(.file) readr::read_csv(.file,
                                     col_types = .spec,
                                     id = "File Name")
        ) |>
        purrr::list_rbind() |>
        dplyr::mutate(
            `File Name` = basename(.data$`File Name`),
            Success = .pred(.data[[.success_column]])
        ) |>
        herccia::success_subtotals(
            .success_field = "Success",
            "File Name",
            "Gender",
            "Race/Ethnicity",
            "EL",
            ...
        )
}
