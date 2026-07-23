## Copyright (C) 2025 by Higher Expectations for Racine County

#' Pull one year of data about household income and populations by sex and race
#'
#' These data will all come from the 5-year ACS.
#' This function fetches tract-level data for one county in one state
#'
#' @param .year `<int>` the year to pull data
#' @param .state `<int>` the two-digit FIPS code for the state
#' @param .county `<chr>` the three-digit FIPS code for the county
#' @inheritDotParams hercacstables::fetch_data use_key
#'
#' @returns `<tbl>` a data frame with columns based upon `...`
#' @export
fetch_acs_employment <- function(.year, .state, .county, ...) {
    herccia::GLOSSARY_FOR_ACS_EMPLOYMENT |>
    purrr::pmap_chr(
        \(Group, Index, ...) hercacstables::build_api_variable(Group,
                                                               Index)
    ) |>
        hercacstables::fetch_data(
            .year,
            for_geo = "tract",
            for_items = "*",
            survey_type = "acs",
            table_or_survey_code = "acs5",
            state = .state,
            county = .county,
            ...
        )
}
