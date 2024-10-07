## code to prepare `POSTSECONDARY_BY_SEX_AND_RACE` dataset goes here

POSTSECONDARY_BY_SEX_AND_RACE <- METADATA_ACS1 |>
    dplyr::filter(
        stringr::str_starts(.data$Group, "B15002")
    ) |>
    tidyr::hoist(
        .col = "Details",
        Sex = 1,
        Education = 2
    ) |>
    dplyr::mutate(
        dplyr::across(c("Sex", "Education"),
                      \(.x)dplyr::coalesce(.x, ""))
    ) |>
    dplyr::inner_join(
        herccia::POSTSECONDARY_EDUCATION_LEVELS,
        by = "Education"
    ) |>
    dplyr::filter(
        .data$Sex != "",
        dplyr::coalesce(.data$Completed, TRUE)
    ) |>
    dplyr::mutate(
        Status = dplyr::if_else(is.na(.data$Completed),
                                "Everyone",
                                "Postsecondary Completers"),
        Suffix = stringr::str_extract(.data$Group, "\\D?$")
    ) |>
    dplyr::inner_join(
        hercacstables::RACE_ETHNICITY_SUBTABLE_METADATA,
        by = "Suffix"
    ) |>
    dplyr::select(
        "Year",
        "Group",
        "Index",
        "Variable",
        "Sex",
        "Status",
        "Census Race"
    )


usethis::use_data(POSTSECONDARY_BY_SEX_AND_RACE, overwrite = TRUE)
