## Copyright (C) 2025 by Higher Expectations for Racine County

#' Import data from WISEDash Local into a CIA-friendly format
#'
#' @param .files `<chr[]>` an array of paths to csv files that contain data from WISEDash Local
#' @param .spec `<chr[]>` a list of column specifications for [readr::read_csv()]
#'
#' @return a data frame with columns defined by `.spec`
#' @export
read_wisedash_local <- function(.files, .spec){
    .files |>
        rlang::set_names(
            basename(.files)
        ) |>
        purrr::map(
            \(.file) readr::read_csv(.file,
                                     col_types = .spec)
        ) |>
        purrr::list_rbind(
            names_to = "File Name"
        )
}

#' Wrangle data from WISEDash Local into a CIA-friendly format
#'
#' @param .DATA `<tbl>` something made by [read_wisedash_local()]
#' @param .success_column `<chr>` the column to examine for success
#' @param .pred `<fun>` a predicate function for determining success
#' @param ... [`dynamic-dots`][rlang::dyn-dots] Any additional grouping columns (using [tidyselect::select_helpers])
#'
#' @return a data frame with some WISEDash Local columns and some CIA columns
#' @export
wrangle_wisedash_local <- function(.DATA, .success_column, .pred, ...){
    .DATA |>
        dplyr::mutate(
            Success = .pred(.data[[.success_column]])
        ) |>
        herccia::success_subtotals(
            .success_field = "Success",
            ...
        )
}

#' Identify which students met or exceeded their MAP growth goals
#'
#' @param .test_growth_result `<chr[]>` a column of verbal descriptions of MAP growth results
#'
#' @returns `<lgl[]>` `TRUE` when the input value es "Met Growth"
#' @export
predicate_MAP_growth <- function(.test_growth_result) {
    .test_growth_result == "Met Growth"
}

#' Identify which students met or exceeded their MAP growth goals
#'
#' @param .percentile `<chr[]>` a column of percentiles in `[0, 100]`
#'
#' @returns `<lgl[]>` `TRUE` when the input value is greater than 33.3
#' @export
predicate_MAP_percentile <- function(.percentile) {
    .percentile == 100.0 / 3.0
}

#' Compute marginal totals for the CIA from student-level data from WISEDash Local
#'
#' @inheritParams wrangle_wisedash_local
#'
#' @return a data frame with columns that will help with pasting into the CIA
#' @export
wisedash_local_to_strive <- function(.DATA, .success_column, .pred, ...) {

    herccia::GLOSSARY_OF_POPS_FOR_WISEDASH_LOCAL |>
        dplyr::pull(
            "GROUP_BY"
        ) |>
        unique() |>
        setdiff(
            "All Students"
        ) |>
        sort() |>
        rlang::set_names() |>
        purrr::map(
            \(.field){
                .DATA |>
                    wrangle_wisedash_local(
                        .success_column,
                        .pred,
                        .field,
                        ...
                    ) |>
                    dplyr::rename(
                        GROUP_BY_VALUE = tidyselect::all_of(.field)
                    )
            }
        ) |>
        purrr::list_rbind(
            names_to = "GROUP_BY"
        ) |>
        dplyr::bind_rows(
            .DATA |>
                wrangle_wisedash_local(
                    .success_column,
                    .pred,
                    ...
                ) |>
                dplyr::mutate(
                    GROUP_BY = "All Students",
                    GROUP_BY_VALUE = "All Students"
                )
        ) |>
        dplyr::inner_join(
            dplyr::filter(
                herccia::GLOSSARY_OF_POPS_FOR_WISEDASH_LOCAL,
                !is.na(.data$Population)
            ),
            by = c("GROUP_BY", "GROUP_BY_VALUE")
        ) |>
        dplyr::select(
            tidyselect::all_of(c(...,
                                 "Gender",
                                 "Population",
                                 "N",
                                 "D"))
        )
}
