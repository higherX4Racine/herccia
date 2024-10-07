## code to prepare `INCOME_BRACKETS` dataset goes here

INCOME_BRACKETS <- hercacstables::METADATA_ACS5 |>
    purrr::pluck(
        "variables"
    ) |>
    dplyr::filter(
        .data$Group == "B19001"
    ) |>
    tidyr::hoist(
        "Details",
        "Income Range" = 1
    ) |>
    dplyr::mutate(
        Lower = .data$`Income Range` |>
            stringr::str_extract("(?<=^\\$)\\d+") |>
            as.integer() |>
            dplyr::coalesce(0L),
        Lower = .data$Lower * 1000L,
        Upper = .data$`Income Range` |>
            stringr::str_extract("\\d+(?=,\\d{3}$)") |>
            as.integer() |>
            dplyr::coalesce(999999L),
        Upper = .data$Upper * 1000L + 999L
    ) |>
    dplyr::select(
        "Group",
        "Index",
        "Variable",
        "Lower",
        "Upper"
    )

usethis::use_data(INCOME_BRACKETS, overwrite = TRUE)
