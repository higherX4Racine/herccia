#' Import data from WISEDash Public into a CIA-friendly format
#'
#' @param .files an array of paths to csv files that contain data from WISEDash public
#' @param .spec a list of column specifications for [readr::read_csv()]
#'
#' @return a data frame with some WISEDash Public columns and some CIA columns
#' @export
read_wisedash_public <- function(.files, .spec){
    .files |>
        purrr::map(
            ~ readr::read_csv(
                .,
                col_types = .spec,
                na = c("", "*")
            )
        ) |>
        purrr::list_rbind() |>
        dplyr::inner_join(
            herccia::WISEDASH_POPULATIONS,
            by = "GROUP_BY_VALUE"
        ) |>
        tidyr::separate_wider_regex(
            "SCHOOL_YEAR",
            c(fall = "\\d{4}",
              "-",
              spring = "\\d{2}")
        ) |>
        dplyr::mutate(
            SCHOOL_YEAR = glue::glue("{.data$fall}-20{.data$spring}")
        ) |>
        dplyr::select(
            !tidyselect::any_of(c("fall", "spring"))
        )
}
