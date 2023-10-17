#' Import a csv file with data from WISEDash Local about map growth
#'
#' @param ... <[`dynamic-dots`][rlang::dyn-dots]> full paths to data files
#'
#' @return a data frame with the following fields
#'   \describe{
#'     \item{Student ID}{<integer>}
#'     \item{Name}{<character>}
#'     \item{Status}{<character>}
#'     \item{Current School}{<character>}
#'     \item{Curr. Grade}{<character>}
#'     \item{Gender}{<character>}
#'     \item{Race/Ethnicity}{<character>}
#'     \item{EL}{<character>}
#'     \item{SPED}{<character>}
#'     \item{Test Growth Result}{<character>}
#'     \item{Test Growth Period}{<character>}
#'     \item{Year}{<character>}
#'     \item{Test Growth Percentile}{<double>}
#'   }
#' @export
read_map_growth <- function(...) {
        rlang::set_names(...) |>
        purrr::map(
            ~ readr::read_csv(.,
                              col_types = list(
                                  `Student ID` = readr::col_integer(),
                                  Name = readr::col_character(),
                                  Status = readr::col_character(),
                                  `Current School` = readr::col_character(),
                                  `Curr. Grade` = readr::col_character(),
                                  Gender = readr::col_character(),
                                  `Race/Ethnicity` = readr::col_character(),
                                  EL = readr::col_character(),
                                  SPED = readr::col_character(),
                                  `Test Growth Result` = readr::col_character(),
                                  `Test Growth Period` = readr::col_character(),
                                  Year = readr::col_character(),
                                  `Test Growth Percentile` = readr::col_integer()
                              ))
        ) |>
        purrr::list_rbind(
            names_to = "File"
        ) |>
        dplyr::mutate(
            File = basename(.data$File)
        ) |>
        tidyr::separate_wider_regex(
            cols = "File",
            patterns = c("fall to spring ",
                         Grade = "\\w+",
                         " ",
                         `Spring Year` = "\\d+",
                         "\\.csv")
        )
}
