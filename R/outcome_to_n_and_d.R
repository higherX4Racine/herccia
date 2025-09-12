# Copyright (C) 2025 by Higher Expectations for Racine County

outcome_to_n_and_d <- function(.DATA, .role_field, .denominator, .numerator){
    .DATA |>
        dplyr::count(
            .data$Year,
            .data$Gender,
            .data$Population,
            Role = dplyr::case_match(.data[[.role_field]],
                                     .denominator ~ "D",
                                     .numerator ~ "N"),
            wt = .data$Count,
            name = "Value"
        )
}
