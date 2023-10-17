#' Mapping between race labels from source data to StriveTogether's terms
#'
#' @format ## STRIVE_TOGETHER_POPULATIONS
#' \describe{
#'   \item{Strive}{a Race/Ethnicity label used in the Civic Infrastructure Assessment}
#'   \item{WISEDash Public}{Race/Ethniity labels used in published WISEDash data}
#'   \item{WISEDash Local}{Race/Ethnicity labels used in WISEDash Local reports}
#' }
#' @source <https://strivetogether.my.site.com/s/article/2023-Civic-Infrastructure-Assessment-resources>
"STRIVE_TOGETHER_POPULATIONS"

#' Mapping between WISEDash Public's "GROUP_BY_VALUE" and StriveTogether's "population."
#'
#' @format ## WISEDASH_POPULATIONS
#' \describe{
#'   \item{Population}{a demographic group label used in the Civic Infrastructure Assessment}
#'   \item{GROUP_BY_VALUE}{the value found in published WISEDash data}
#'   \item{Gender}{Either "All", "Female", or "Male"}
#' }
#' @source <https://strivetogether.my.site.com/s/article/2023-Civic-Infrastructure-Assessment-resources>
"WISEDASH_POPULATIONS"
