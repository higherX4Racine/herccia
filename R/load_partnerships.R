## Copyright (C) 2025 by Higher Expectations for Racine County

#' Load JSON descriptions of StriveTogether partnerships
#'
#' Each StriveTogether partnership calculates its CIA report in a slightly
#' different way.
#' Nevertheless, there are many features in common.
#' This function expects a JSON file with an array of objects, one per
#' partnership.
#' The objects contain the details necessary for computing CIA outcomes.
#'
#' The actual structure of the output depends upon the JSON file.
#' The current expectation is that each object has the following fields.
#' \describe{
#'   \item{name `<chr>`}{this will be used as the object's name in the output list.}
#'   \item{spreadsheet_id `<chr>`}{the uuid for the Google Sheet that will hold the partnership's results}
#'   \item{state `<chr>`}{the two-letter postal code for the state that the partnership works in}
#'   \item{state lds info `<lst>`}{an object with whatever info the state-specific function needs to compute outcomes}
#'   \item{ipeds unit ids `<int[]>`}{the UNITIDs for each of the partnership's postsecondary collaborators}
#' }
#'
#' @param .path `<chr>` the full path to the partnership
#'
#' @returns `<lst>` a named list of partnership information. See Details.
#' @export
load_partnerships <- function(.path) {
    .pards <- jsonlite::fromJSON(.path,
                                 simplifyVector = TRUE,
                                 simplifyDataFrame = FALSE,
                                 simplifyMatrix = FALSE,
                                 flatten = TRUE)
    rlang::set_names(.pards,
                     purrr::map_chr(.pards, \(.).$name))
}
