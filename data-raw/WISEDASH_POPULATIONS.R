WISEDASH_POPULATIONS <- herccia::STRIVE_TOGETHER_POPULATIONS |>
    dplyr::select(
        Population = "Strive",
        GROUP_BY_VALUE = "WISEDash Public"
    ) |>
    dplyr::mutate(
        Gender = "All"
    ) |>
    dplyr::bind_rows(
        tibble::tibble(Population = rep("All Students", 2L),
                       GROUP_BY_VALUE = c("Female", "Male"),
                       Gender = c("Female", "Male"))
    ) |>
    dplyr::mutate(
        Population = forcats::fct_inorder(.data$Population)
    )

usethis::use_data(WISEDASH_POPULATIONS, overwrite = TRUE)
