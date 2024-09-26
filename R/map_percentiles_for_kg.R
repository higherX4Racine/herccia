#' Import and wrangle WISEDash Local data about Kindergartners' percentile scores on MAP reading
#'
#' This function both reads a raw CSV output from WISEDash Local and wrangles it
#' into a CIA-friendly format. In particular, it converts the percentile scores
#' into counts of Kindergarten readiness by considering any percentile above the
#' `.standard` argument to be "ready."
#'
#' The returned value will have the following structure:
#'
#' \describe{
#'   \item{File Name}{<chr> The [basename()] of the .filepath argument}
#'   \item{Gender}{<chr> A gender identity like "All," "Female," "Male," or "Non-binary."}
#'   \item{Race/Ethnicity}{<chr> A racial or ethnic identity from [WISEDash's options](https://dpi.wi.gov/wise/data-elements/race)}
#'   \item{EL}{<chr> Whether ("Yes") or not ("No") a student is an English Language Learner}
#'   \item{School Year}{<chr> The school year in YY-YY format}
#'   \item{N}{<int> The number of children in a combination of Gender, Race, and EL with percentile scores that exceeded the `.standard`}
#'   \item{D}{<int> The number of children in a combination of Gender, Race, and EL}
#'   \item{Year}{<chr> The school year in YYYY-YYYY format}
#'   \item{Grade}{<chr> Always "KG"}
#' }
#'
#' @param .filepath string, one or more full paths to raw data files
#' @param .standard float, the minimum percentile to count as proficient. 0-100 scale.
#'
#' @return a data frame with 9 columns
#'
#' @seealso [read_wisedash_local()]
#'
#' @export
map_percentiles_for_kg <- function(.filepath, .standard) {
    .filepath |>
        read_wisedash_local(
            .spec = herccia::SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES,
            .success_column = "Percentile",
            .pred = \(.pctile) .pctile >= .standard,
            "School Year"
        ) |>
        dplyr::mutate(
            Year = stringr::str_replace(.data$`School Year`,
                                        "(\\d{2})-(\\d{2})",
                                        "20\\1-20\\2"),
            Grade = "KG"
        )
}
