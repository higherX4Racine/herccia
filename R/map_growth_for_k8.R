#' Import and wrangle WISEDash Local data about students' growth on MAP reading
#'
#' This function both reads a raw CSV output from WISEDash Local and wrangles it
#' into a CIA-friendly format. In particular, it uses the "Test Growth Result"
#' field to count the number of students who met or exceeded their growth goal.
#' **CAVEAT** the file name(s) must contain grade information.
#'
#' The returned value will have the following structure:
#'
#' \describe{
#'   \item{Grade}{<chr> A zero-padded two-digit grade such as "03" or "08"}
#'   \item{Gender}{<chr> A gender identity like "All," "Female," "Male," or "Non-binary."}
#'   \item{Race/Ethnicity}{<chr> A racial or ethnic identity from [WISEDash's options](https://dpi.wi.gov/wise/data-elements/race)}
#'   \item{EL}{<chr> Whether ("Yes") or not ("No") a student is an English Language Learner}
#'   \item{Year}{<chr> The school year in YYYY-YYYY format}
#'   \item{N}{<int> The number of children in a combination of Gender, Race, and EL that met their growth goals.}
#'   \item{D}{<int> The number of children in a combination of Gender, Race, and EL}
#' }
#'
#' @param .filepath string, one or more full paths to raw data files
#' @param .basename_prefix string, a regex to match the parts of file names that appear before the grade
#' @param .grade_pattern string, a regex to match the part of the file name containing the grade level
#' @param .basename_suffix string, a regex to match the parts of file names that appear after the grade
#'
#' @return a data frame with 9 columns
#' @seealso [read_wisedash_local()]
#' @export
map_growth_for_k8 <- function(.filepath, .basename_prefix, .grade_pattern, .basename_suffix = ".*") {
    .filepath |>
        herccia::read_wisedash_local(
            .spec = herccia::SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH,
            .success_column = "Test Growth Result",
            .pred = \(.result) .result == "Met Growth",
            "Year"
        ) |>
        tidyr::separate_wider_regex(
            cols = "File Name",
            patterns = c(.basename_prefix,
                         Grade = .grade_pattern,
                         .basename_suffix),
            too_few = "align_start"
        )
}
