## code to prepare `POSTSECONDARY_BY_LANGUAGE` dataset goes here

POSTSECONDARY_BY_LANGUAGE <- METADATA_ACS1 |>
    dplyr::filter(
        .data$Year == 2005,
        .data$Group == "B16010"
    ) |>
    tidyr::hoist(
        "Details",
        Education = 1,
        Employment = 2,
        Language = 3
    ) |>
    dplyr::mutate(
        Language = dplyr::coalesce(.data$Language,
                                   "Everyone"),
        dplyr::across(c("Education", "Employment"),
                      \(.s) dplyr::coalesce(.s, ""))
    ) |>
    dplyr::inner_join(
        POSTSECONDARY_EDUCATION_LEVELS,
        by = "Education"
    ) |>
    dplyr::filter(
        .data$Employment != "",
        .data$Language %in% c("Everyone", "Speak only English")
    ) |>
    dplyr::mutate(
        Status = dplyr::if_else(.data$Completed,
                                "Postsecondary Completers",
                                "No Postsecondary Credential")
    ) |>
    dplyr::select(
        "Group",
        "Index",
        "Variable",
        "Education",
        "Employment",
        "Language",
        "Status"
    )

usethis::use_data(POSTSECONDARY_BY_LANGUAGE, overwrite = TRUE)
