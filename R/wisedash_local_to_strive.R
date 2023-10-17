#' Compute marginal totals for the CIA from student-level data from WISEDash Local
#'
#' @param .x <data.frame> the student-level data
#' @param .grade,.year,.race,.gender,.ell <chr> optional, the names of columns in `.x`
#'
#' @return a data frame with columns that will help with pasting into the CIA
#' @export
wisedash_local_to_strive <- function(.x,
                                     .grade = "Grade",
                                     .year = "Year",
                                     .race = "Race/Ethnicity",
                                     .gender = "Gender",
                                     .ell = "EL") {

    everybody <- .x |>
        tabulate_map_growth(.grade, .year) |>
        dplyr::mutate("{.gender}" := "All", "{.race}" := "All Students")

    all_ells <- .x |>
        dplyr::filter(.data[[.ell]] == "Yes") |>
        tabulate_map_growth(.grade, .year) |>
        dplyr::mutate("{.gender}" := "All", "{.race}" := "English Language Learner")

    ell_genders <- .x |>
        dplyr::filter(.data[[.ell]] == "Yes") |>
        tabulate_map_growth(.grade, .year, .gender) |>
        dplyr::mutate("{.race}" := "English Language Learner")

    genders <- .x |>
        tabulate_map_growth(.grade, .year, .gender) |>
        dplyr::mutate("{.race}" := "All Students")

    races <- .x |>
        tabulate_map_growth(.grade, .year, .race) |>
        dplyr::mutate("{.gender}" := "All")

    race_and_gender <- tabulate_map_growth(.x, .grade, .year, .gender, .race)

    everybody |>
        dplyr::bind_rows(
            all_ells,
            genders,
            ell_genders,
            races,
            race_and_gender
        ) |>
        dplyr::left_join(
            herccia::STRIVE_TOGETHER_POPULATIONS,
            by = rlang::set_names("WISEDash Local", .race)
        ) |>
        dplyr::select(
            tidyselect::all_of(c(
                .grade,
                .year,
                .gender,
                Population = "Strive",
                "N",
                "D"
            ))
        ) |>
        tidyr::pivot_longer(
            cols = c("N", "D"),
            names_to = "Role",
            values_to = "Value"
        ) |>
        dplyr::arrange(
            .data[[.grade]],
            .data[[.year]],
            .data[[.gender]],
            .data$Population,
            dplyr::desc(.data$Role)
        )
}
