#' Mapping between race labels from source data to StriveTogether's terms
#'
#' @format ## STRIVE_TOGETHER_POPULATIONS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 11 rows and 4 columns.
#' \describe{
#'   \item{Strive}{*&lt;chr&gt;* a Race/Ethnicity label used in the Civic Infrastructure Assessment}
#'   \item{Census Race/Ethnicity}{*&lt;chr&gt;* a Race/Ethnicity label used by the US Census}
#'   \item{WISEDash Public}{*&lt;chr&gt;* Race/Ethniity labels used in published WISEDash data}
#'   \item{WISEDash Local}{*&lt;chr&gt;* Race/Ethnicity labels used in WISEDash Local reports}
#' }
#' @source <https://strivetogether.my.site.com/s/article/2023-Civic-Infrastructure-Assessment-resources>
"STRIVE_TOGETHER_POPULATIONS"

#' Use this to semi-join Forward results and only get Strive-relevant data
#'
#' @format ## STRIVE_TOGETHER_FORWARD
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 2 rows and 3 columns
#' \describe{
#'   \item{TEST_GROUP}{*&lt;chr&gt;* "Forward"}
#'   \item{GRADE_LEVEL}{*&lt;int&gt;* `3L` or `8L`}
#'   \item{TEST_SUBJECT}{*&lt;chr&gt;* "ELA" for 3rd grade and "Mathematics" for 8th}
#' }
"STRIVE_TOGETHER_FORWARD"

#' Mapping between WISEDash Public's "GROUP_BY_VALUE" and StriveTogether's "population."
#'
#' @format ## WISEDASH_POPULATIONS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 13 rows and 3 columns.
#' \describe{
#'   \item{Population}{*&lt;chr&gt;* a demographic group label used in the Civic Infrastructure Assessment}
#'   \item{GROUP_BY_VALUE}{*&lt;chr&gt;* the value found in published WISEDash data}
#'   \item{Gender}{*&lt;chr&gt;* Either "All", "Female", or "Male"}
#' }
#' @source <https://strivetogether.my.site.com/s/article/2023-Civic-Infrastructure-Assessment-resources>
"WISEDASH_POPULATIONS"

#' The literal row labels for different populations that StriveTogether wants
#'
#' @format ## OUTPUT_POPULATIONS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 36 rows and 3 columns.
#' \describe{
#'   \item{Gender}{*&lt;chr&gt;* either "All", "Male", or "Female}
#'   \item{Population}{*&lt;chr&gt;* some racial, ethnic, language-learner, and economic categories}
#'   \item{CIA Year}{*&lt;int&gt;* which year that Strive requested this combination of Gender and Population}
#' }
"OUTPUT_POPULATIONS"

#' Column specification for data from WISEDash about student growth in MAP scores
#'
#' @format ## SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH
#' A list of 13 name-datatype pairs
#' \describe{
#'   \item{Student ID}{*&lt;int&gt;*}
#'   \item{Name}{*&lt;chr&gt;*}
#'   \item{Status}{*&lt;chr&gt;*}
#'   \item{Current School}{*&lt;chr&gt;*}
#'   \item{Curr. Grade}{*&lt;chr&gt;*}
#'   \item{Gender}{*&lt;chr&gt;*}
#'   \item{Race/Ethnicity}{*&lt;chr&gt;*}
#'   \item{EL}{*&lt;chr&gt;*}
#'   \item{SPED}{*&lt;chr&gt;*}
#'   \item{Test Growth Result}{*&lt;chr&gt;*}
#'   \item{Test Growth Period}{*&lt;chr&gt;*}
#'   \item{Year}{*&lt;chr&gt;*}
#'   \item{Test Growth Percentile}{*&lt;dbl&gt;*}
#' }
"SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH"

#' Column specification for data from WISEDash about student MAP percentile scores
#'
#' @format ## SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES
#' A list of 16 name-datatype pairs
#' \describe{
#'   \item{Student ID}{*&lt;int&gt;*}
#'   \item{Name}{*&lt;chr&gt;*}
#'   \item{Status}{*&lt;chr&gt;*}
#'   \item{Current School}{*&lt;chr&gt;*}
#'   \item{Curr. Grade}{*&lt;chr&gt;*}
#'   \item{Gender}{*&lt;chr&gt;*}
#'   \item{Race/Ethnicity}{*&lt;chr&gt;*}
#'   \item{EL}{*&lt;chr&gt;*}
#'   \item{SPED}{*&lt;chr&gt;*}
#'   \item{Percentile Score}{*&lt;chr&gt;*}
#'   \item{Percentile}{*&lt;dbl&gt;*}
#'   \item{Norm Lvl}{*&lt;chr&gt;*}
#'   \item{School Year}{*&lt;chr&gt;*}
#' }
"SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES"

#' A lookup table for mapping demographic information from WISEDash Local to StriveTogether formats
#' @format ## JOIN_PATTERNS_FOR_WISEDASH_LOCAL
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 36 rows and 6 columns.
#' \describe{
#'   \item{Gender}{*&lt;chr&gt;* a StriveTogether gender identity}
#'   \item{Population}{*&lt;chr&gt;* a StriveTogether race/ethnicity, language status, or economic status}
#'   \item{Gender Pattern}{*&lt;chr&gt;* a regular expression to match the correct genders for this gender-population combination}
#'   \item{Race Pattern}{*&lt;chr&gt;* a regular expression to match the correct races for this gender-population combination}
#'   \item{EL Pattern}{*&lt;chr&gt;* a regular expression to match the correct language status for this gender-population combination}
#'   \item{SES Pattern}{*&lt;chr&gt;* a regular expression to match the correct economic status for this gender-population combination}
#' }
"JOIN_PATTERNS_FOR_WISEDASH_LOCAL"

#' A lookup table for mapping from StriveTogether race/ethnicities to those used by the Census, WISEDash Public, and WISEDash Local
#' @format ## STRIVE_TOGETHER_RACE_ETHNICITIES
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 8 rows and 2 columns.
#' \describe{
#'   \item{Strive}{*&lt;chr&gt;* ordered population identities}
#'   \item{WISEDash Local}{*&lt;chr&gt;* Racial and ethnic identities as they appear in WISEDash Local}
#' }
"STRIVE_TOGETHER_RACE_ETHNICITIES"

#' Variables from the US Census to describe postsecondary completion by language spoken
#' @format ## POSTSECONDARY_BY_LANGUAGE
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 12 rows and 7 columns.
#' \describe{
#'   \item{Group      }{*&lt;chr&gt;* the ACS table of this variable }
#'   \item{Index      }{*&lt;int&gt;* this variable's row in its ACS table}
#'   \item{Variable   }{*&lt;chr&gt;* the full specification of this variable for querying the API}
#'   \item{Education  }{*&lt;chr&gt;* the ACS vintage that this variable belongs to}
#'   \item{Employment }{*&lt;chr&gt;* the labor force participation of people counted by this variable}
#'   \item{Language   }{*&lt;chr&gt;* use of English by people counted by this variable}
#'   \item{Status     }{*&lt;chr&gt;* the educational status of people counted by this variable}
#' }
"POSTSECONDARY_BY_LANGUAGE"

#' Variables from the US Census to describe postsecondary completion by poverty status
#' @format ## POSTSECONDARY_BY_POVERTY
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 12 rows and 6 columns.
#' \describe{
#'   \item{Group      }{*&lt;chr&gt;* the ACS table of this variable }
#'   \item{Index      }{*&lt;int&gt;* this variable's row in its ACS table}
#'   \item{Variable   }{*&lt;chr&gt;* the full specification of this variable for querying the API}
#'   \item{Poverty Status}{*&lt;chr&gt;* either "Above" or "Below"}
#'   \item{Sex        }{*&lt;chr&gt;* the sex of people counted by this variable}
#'   \item{Status     }{*&lt;chr&gt;* the educational status of people counted by this variable}
#' }
"POSTSECONDARY_BY_POVERTY"

#' Variables from the US Census to describe postsecondary completion by sex and race/ethnicity
#' @format ## POSTSECONDARY_BY_SEX_AND_RACE
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 1428 rows and 7 columns.
#' \describe{
#'   \item{Year       }{*&lt;int&gt;* the ACS vintage that this variable belongs to}
#'   \item{Group      }{*&lt;chr&gt;* the ACS table of this variable }
#'   \item{Index      }{*&lt;int&gt;* this variable's row in its ACS table}
#'   \item{Variable   }{*&lt;chr&gt;* the full specification of this variable for querying the API}
#'   \item{Sex        }{*&lt;chr&gt;* the sex of people counted by this variable}
#'   \item{Status     }{*&lt;chr&gt;* the educational status of people counted by this variable}
#'   \item{Census Race}{*&lt;chr&gt;* the OMB race category of people counted by this variable}
#' }
"POSTSECONDARY_BY_SEX_AND_RACE"

#' Values of education levels from the US Census to describe postsecondary completion
#' @format ## POSTSECONDARY_EDUCATION_LEVELS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 28 rows and 4 columns.
#' \describe{
#'   \item{Order}{*&lt;num&gt;* where the level occurs in the educational sequence}
#'   \item{Education}{*&lt;chr&gt;* a human-readable description of the educational level}
#'   \item{Enrolled}{*&lt;lgl&gt;* whether someone at this educational level should be considered as enrolled in postsecondary}
#'   \item{Completed}{*&lt;lgl&gt;* whether someone at this educational level should be considered to have completed postsecondary}
#' }
"POSTSECONDARY_EDUCATION_LEVELS"

#' Mapping from Census demographic categories to StriveTogether ones
#' @format ## CENSUS_POPULATIONS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 12 rows and 2 columns.
#' \describe{
#'   \item{Category}{*&lt;chr&gt;* one of the OMB categories used by IPEDS}
#'   \item{Population}{*&lt;chr&gt;* one of the categories used by StriveTogether}
#' }
"CENSUS_POPULATIONS"

#' Mapping from Census income brackets to dollar values
#' @format ## INCOME_BRACKETS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 17 rows and 5 columns.
#' \describe{
#'   \item{Group}{*&lt;chr&gt;* the code for the bracket's ACS table}
#'   \item{Index}{*&lt;int&gt;* the code for the bracket's row in an ACS table}
#'   \item{Variable}{*&lt;chr&gt;* the bracket's full variable for querying the api}
#'   \item{Lower}{*&lt;int&gt;* the lower end of the bracket in dollars per year}
#'   \item{Upper}{*&lt;int&gt;* the lower end of the bracket in dollars per year}
#' }
"INCOME_BRACKETS"

#' Mapping from IPEDS populations to StriveTogether ones
#' @format ## IPEDS_POPULATIONS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 27 rows and 4 columns.
#'\describe{
#'   \item{Sex}{*&lt;chr&gt;* "all", "men", or "women", as per IPEDS}
#'   \item{Gender}{*&lt;chr&gt;* "All", "Female", or "Male", as per StriveTogether}
#'   \item{Race/Ethnicity}{*&lt;chr&gt;* one of the OMB categories used by IPEDS}
#'   \item{Population}{*&lt;chr&gt;* one of the categories used by StriveTogether}
#' }
"IPEDS_POPULATIONS"
