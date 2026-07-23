## Copyright (C) 2025 by Higher Expectations for Racine County

#' Estimate the number of people living in a household with a family-sustaining income
#'
#' @param .raw_acs_employment `<tbl>` output from [fetch_acs_employment()]
#'
#' @returns `<tbl>` a data frame with five columns
#' \describe{
#'   \item{Year}{`<int>` Which 5-year ACS estimate the data come from}
#'   \item{Gender}{`<chr>` "All," "Female," or "Male."}
#'   \item{Population}{`<chr>` The socioeconomic group that the row describes}
#'   \item{N}{`<dbl>` The estimated number of people with a family-sustaining income}
#'   \item{D}{`<int>` The estimated number of people in total.}
#' }
#' @export
wrangle_acs_employment <- function(.raw_acs_employment) {

    .raw_acs_employment |>
        .wrangle_acs_helper(
            "Families",
            stringr::str_ends(.data$Population, "Households")
        ) |>
        dplyr::select(
            !"Gender"
        ) |>
        tidyr::pivot_wider(
            names_from = "Population",
            values_from = "Families",
            values_fill = 0L
        ) |>
        dplyr::mutate(
            Proportion = .data$`Family-sustaining Households` /
                .data$`All Households`
        ) |>
        dplyr::inner_join(
            .wrangle_acs_helper(.raw_acs_employment,
                    "People",
                    !is.na(.data$Gender)),
            by = c("Year", "GEOID")
        ) |>
        dplyr::summarize(
            N = sum(.data$People * .data$Proportion, na.rm = TRUE),
            D = sum(.data$People, na.rm = TRUE),
            .by = c("Year", "Gender", "Population")
        )
}

.wrangle_acs_helper <- function(.raw_acs_employment, .count_name, ...) {
    herccia::GLOSSARY_FOR_ACS_EMPLOYMENT |>
        dplyr::filter(
            ...
        ) |>
        dplyr::inner_join(
            .raw_acs_employment,
            by = c("Group", "Index")
        ) |>
        dplyr::mutate(
            Value = dplyr::coalesce(.data$Value, 0)
        ) |>
        dplyr::count(
            .data$Year,
            GEOID = paste0(.data$state, .data$county, .data$tract),
            .data$Gender,
            .data$Population,
            wt = .data$Value,
            name = .count_name
        )
}
