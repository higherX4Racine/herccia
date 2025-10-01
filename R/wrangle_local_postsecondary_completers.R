.helper <- function(.nested_data, .key, ...) {
    .nested_data |>
        dplyr::select(
            tidyselect::all_of(c("Index", .key))
        ) |>
        tidyr::unnest(
            tidyselect::all_of(.key)
        ) |>
        dplyr::filter(
            ...
        ) |>
        dplyr::count(
            .data$Index,
            wt = .data$Count,
            name = .key
        )
}

#' Wrangle raw IPEDS graduation data for local schools into the local 150% postsecondary completion rate
#'
#' @param .DATA a data frame with GR data a la [`hercipeds::read_graduates()`]
#'
#' @return a data frame ready for [`to_wide_cia_format()`]
#' @export
wrangle_local_postsecondary_completers <- function(.DATA) {
    .tmp <- dplyr::mutate(.DATA,
                          Index = dplyr::row_number())

    .cohort <- .helper(.tmp,
                       "Cohort",
                       .data$Statistic == "Adjusted cohort")

    .completers <- .helper(.tmp,
                           "Completers",
                           .data$`Award Level` == "Any degree",
                           .data$`Time to Award` == "<=150%")

    .tmp |>
        dplyr::select(
            !tidyselect::any_of(c("Cohort", "Completers"))
        ) |>
        dplyr::filter(
            .data$`Award Sought` == "Any degree"
        ) |>
        dplyr::rename(
            `Race/Ethnicity` = "Population"
        ) |>
        dplyr::inner_join(
            herccia::GLOSSARY_OF_POPS_FOR_IPEDS
        ) |>
        dplyr::inner_join(
            .cohort,
            by = "Index"
        ) |>
        dplyr::inner_join(
            .completers,
            by = "Index"
        ) |>
        dplyr::summarize(
            N = sum(.data$Completers, na.rm = TRUE),
            D = sum(.data$Cohort, na.rm = TRUE),
            .by = c("Year",
                    "Population",
                    "Gender"
            )
        )
}
