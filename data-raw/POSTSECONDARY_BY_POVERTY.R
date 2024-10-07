## code to prepare `POSTSECONDARY_BY_POVERTY` dataset goes here

POSTSECONDARY_BY_POVERTY <- METADATA_ACS1 |>
    dplyr::filter(
        .data$Year == 2005,
        stringr::str_detect(.data$Group, "^B"),
        stringr::str_detect(
            .data$Concept,
            stringr::regex("individuals", ignore_case = TRUE)
        ),
        stringr::str_detect(
            .data$Concept,
            stringr::regex("educational attainment",ignore_case = TRUE)
        ),
        stringr::str_detect(
            .data$Concept,
            stringr::regex("poverty status", ignore_case = TRUE)
        )
    ) |>
    tidyr::hoist(
        "Details",
        `Poverty Status` = 1,
        Sex = 2,
        Education = 3
    ) |>
    dplyr::mutate(
        dplyr::across(c("Poverty Status", "Sex", "Education"),
                      \(.s) dplyr::coalesce(.s, ""))
    ) |>
    dplyr::inner_join(
        POSTSECONDARY_EDUCATION_LEVELS,
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
        `Poverty Status` = .data$`Poverty Status` |>
            stringr::str_extract(
                "(\\w+)(?= poverty level$)"
            ) |>
            stringr::str_to_title()
    ) |>
    dplyr::select(
        "Group",
        "Index",
        "Variable",
        "Poverty Status",
        "Sex",
        "Status"
    )

usethis::use_data(POSTSECONDARY_BY_POVERTY, overwrite = TRUE)
