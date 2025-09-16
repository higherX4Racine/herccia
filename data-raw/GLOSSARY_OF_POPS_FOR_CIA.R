## Copyright (C) 2025 by Higher Expectations for Racine County

.FILES <- "extdata" |>
    system.file(
        "output_populations",
        package = "herccia"
    ) |>
    dir(
        pattern = "*.csv",
        full.names = TRUE
    )

GLOSSARY_OF_POPS_FOR_CIA <- .FILES |>
    rlang::set_names(
        .FILES |>
            basename() |>
            stringr::str_extract("\\d+")
    ) |>
    purrr::map(
        \(.fn) readr::read_csv(.fn, col_types = "c")
    ) |>
    purrr::list_rbind(
        names_to = "CIA Year"
    ) |>
    dplyr::mutate(
        `CIA Year` = as.integer(.data$`CIA Year`)
    )

usethis::use_data(GLOSSARY_OF_POPS_FOR_CIA, overwrite = TRUE)
