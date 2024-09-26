## code to prepare `OUTPUT_POPULATIONS` dataset goes here

OUTPUT_POPULATIONS <- "extdata" |>
    system.file(
        "output_populations",
        package = "herccia"
    ) |>
    dir(
        pattern = "*.csv",
        full.names = TRUE
    ) |>
    purrr::map(
        \(.fn) readr::read_csv(.fn, col_types = "c", id = "File")
    ) |>
    purrr::list_rbind() |>
    dplyr::mutate(
        `CIA Year` = as.integer(stringr::str_extract(.data$File, "\\d+"))
    ) |>
    dplyr::select(
        !tidyselect::any_of(c("File"))
    )

usethis::use_data(OUTPUT_POPULATIONS, overwrite = TRUE)
