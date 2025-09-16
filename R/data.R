## Copyright (C) 2025 by Higher Expectation for Racine County

#' Values of education levels from the US Census to describe postsecondary completion
#' @format ## POSTSECONDARY_EDUCATION_LEVELS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 28 rows and 4 columns.
#' \describe{
#'   \item{Order}{`<num>` where the level occurs in the educational sequence}
#'   \item{Education}{`<chr>` a human-readable description of the educational level}
#'   \item{Enrolled}{`<lgl>` whether someone at this educational level should be considered as enrolled in postsecondary}
#'   \item{Completed}{`<lgl>` whether someone at this educational level should be considered to have completed postsecondary}
#' }
"POSTSECONDARY_EDUCATION_LEVELS"

#' Variables from the US Census to describe postsecondary completion by language spoken
#' @format ## POSTSECONDARY_BY_LANGUAGE
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 12 rows and 7 columns.
#' \describe{
#'   \item{Group      }{`<chr>` the ACS table of this variable }
#'   \item{Index      }{`<int>` this variable's row in its ACS table}
#'   \item{Variable   }{`<chr>` the full specification of this variable for querying the API}
#'   \item{Education  }{`<chr>` the ACS vintage that this variable belongs to}
#'   \item{Employment }{`<chr>` the labor force participation of people counted by this variable}
#'   \item{Language   }{`<chr>` use of English by people counted by this variable}
#'   \item{Status     }{`<chr>` the educational status of people counted by this variable}
#' }
"POSTSECONDARY_BY_LANGUAGE"

#' Variables from the US Census to describe postsecondary completion by poverty status
#' @format ## POSTSECONDARY_BY_POVERTY
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 12 rows and 6 columns.
#' \describe{
#'   \item{Group      }{`<chr>` the ACS table of this variable }
#'   \item{Index      }{`<int>` this variable's row in its ACS table}
#'   \item{Variable   }{`<chr>` the full specification of this variable for querying the API}
#'   \item{Poverty Status}{`<chr>` either "Above" or "Below"}
#'   \item{Sex        }{`<chr>` the sex of people counted by this variable}
#'   \item{Status     }{`<chr>` the educational status of people counted by this variable}
#' }
"POSTSECONDARY_BY_POVERTY"

#' Variables from the US Census to describe postsecondary completion by sex and race/ethnicity
#' @format ## POSTSECONDARY_BY_SEX_AND_RACE
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 1428 rows and 7 columns.
#' \describe{
#'   \item{Year       }{`<int>` the ACS vintage that this variable belongs to}
#'   \item{Group      }{`<chr>` the ACS table of this variable }
#'   \item{Index      }{`<int>` this variable's row in its ACS table}
#'   \item{Variable   }{`<chr>` the full specification of this variable for querying the API}
#'   \item{Sex        }{`<chr>` the sex of people counted by this variable}
#'   \item{Status     }{`<chr>` the educational status of people counted by this variable}
#'   \item{Census Race}{`<chr>` the OMB race category of people counted by this variable}
#' }
"POSTSECONDARY_BY_SEX_AND_RACE"

#' Mapping from Census income brackets to dollar values
#' @format ## INCOME_BRACKETS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 17 rows and 5 columns.
#' \describe{
#'   \item{Group}{`<chr>` the code for the bracket's ACS table}
#'   \item{Index}{`<int>` the code for the bracket's row in an ACS table}
#'   \item{Variable}{`<chr>` the bracket's full variable for querying the api}
#'   \item{Lower}{`<int>` the lower end of the bracket in dollars per year}
#'   \item{Upper}{`<int>` the lower end of the bracket in dollars per year}
#' }
"INCOME_BRACKETS"

## GLOSSARIES THAT CONNECT SOURCES' DEMOGRAPHIC LABELS TO THE CIA'S LABELS

#' Mapping from Census demographic categories to StriveTogether ones
#' @format ## GLOSSARY_OF_POPS_FOR_CENSUS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 12 rows and 2 columns.
#' \describe{
#'   \item{Category}{`<chr>` one of the OMB categories used by IPEDS}
#'   \item{Population}{`<chr>` one of the categories used by StriveTogether}
#' }
"GLOSSARY_OF_POPS_FOR_CENSUS"

#' The literal row labels for different populations that StriveTogether wants
#'
#' @format ## GLOSSARY_OF_POPS_FOR_CIA
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 72 rows and 3 columns.
#' \describe{
#'   \item{CIA Year}{`<int>` which year that Strive requested this combination of Gender and Population}
#'   \item{Gender}{`<chr>` either "All", "Male", or "Female}
#'   \item{Population}{`<chr>` some racial, ethnic, language-learner, and economic categories}
#' }
"GLOSSARY_OF_POPS_FOR_CIA"

#' Group population and gender classes into three comparsions for visualization
#' @format ## GLOSSARY_OF_POPS_FOR_COMPS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 13 rows and 3 columns.
#' \describe{
#'   \item{Comparison}{`<chr>` either "SES," "Gender," or "Race/Ethnicity"}
#'   \item{Gender}{`<chr>` currently, Strive just uses two, plus "All"}
#'   \item{Population}{`<chr>` a specific socioeconomic status, race/ethnicity, or gender}
#' }
"GLOSSARY_OF_POPS_FOR_COMPS"

#' Mapping from IPEDS populations to StriveTogether ones
#' @format ## GLOSSARY_OF_POPS_FOR_IPEDS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 27 rows and 4 columns.
#'\describe{
#'   \item{Sex}{`<chr>` "all", "men", or "women", as per IPEDS}
#'   \item{Gender}{`<chr>` "All", "Female", or "Male", as per StriveTogether}
#'   \item{Race/Ethnicity}{`<chr>` one of the OMB categories used by IPEDS}
#'   \item{Population}{`<chr>` one of the categories used by StriveTogether}
#' }
"GLOSSARY_OF_POPS_FOR_IPEDS"

#' Mapping between WISEDash Public's "GROUP_BY_VALUE" and StriveTogether's "population."
#'
#' @format ## GLOSSARY_OF_POPS_FOR_WISEDASH
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 13 rows and 3 columns.
#' \describe{
#'   \item{Population}{`<chr>` a demographic group label used in the Civic Infrastructure Assessment}
#'   \item{GROUP_BY_VALUE}{`<chr>` the value found in published WISEDash data}
#'   \item{Gender}{`<chr>` Either "All", "Female", or "Male"}
#' }
#' @source <https://strivetogether.my.site.com/s/article/2023-Civic-Infrastructure-Assessment-resources>
"GLOSSARY_OF_POPS_FOR_WISEDASH"

#' A mapping from WISEDash Local labels to StriveTogether ones.
#' @format ## GLOSSARY_OF_POPS_FOR_WISEDASH_LOCAL
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 14 rows and 4 columns.
#' \describe{
#'   \item{GROUP_BY}{`<chr>` broader demographic concepts such as Race/Ethnicity, Gender, or SES.}
#'   \item{GROUP_BY_VALUE}{`<chr>` specific instances of groups such as Race/Ethnicity, Gender, or SES.}
#'   \item{Gender}{`<chr>` currently, Strive just uses two, plus "All"}
#'   \item{Population}{`<chr>` a specific socioeconomic status, race/ethnicity, or gender}
#' }
"GLOSSARY_OF_POPS_FOR_WISEDASH_LOCAL"

## TABLES FOR EFFICIENTLY FILTERING WITH SEMI_JOIN
## - these are crucial when you need to refer to multi-column combinations

#' Use this to semi-join Forward results and only get Strive-relevant data
#'
#' @format ## SEMI_JOINS_FOR_FORWARD
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 2 rows and 3 columns
#' \describe{
#'   \item{TEST_GROUP}{`<chr>` "Forward"}
#'   \item{GRADE_LEVEL}{`<int>` `3L` or `8L`}
#'   \item{TEST_SUBJECT}{`<chr>` "ELA" for 3rd grade and "Mathematics" for 8th}
#' }
"SEMI_JOINS_FOR_FORWARD"

#' IPEDS fields for calculating 150% graduation counts
#' @format ## SEMI_JOINS_FOR_IPEDS
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 2 rows and 3 columns.
#'\describe{
#'   \item{Status}{`<chr>` "Adjusted Cohort" "Completed"}
#'   \item{Relative Time}{`<chr>` NA "<=150%"}
#'   \item{Credential Earned}{`<chr>` NA "Any"}
#' }
"SEMI_JOINS_FOR_IPEDS"

#' A lookup table for mapping demographic information from WISEDash Local to StriveTogether formats
#' @format ## SEMI_JOINS_FOR_WISEDASH_LOCAL
#' An object of class `spec_tbl_df`
#' (inherits from `tbl_df`, `tbl`, `data.frame`)
#' with 36 rows and 6 columns.
#' \describe{
#'   \item{Gender}{`<chr>` a StriveTogether gender identity}
#'   \item{Population}{`<chr>` a StriveTogether race/ethnicity, language status, or economic status}
#'   \item{Gender Pattern}{`<chr>` a regular expression to match the correct genders for this gender-population combination}
#'   \item{Race Pattern}{`<chr>` a regular expression to match the correct races for this gender-population combination}
#'   \item{EL Pattern}{`<chr>` a regular expression to match the correct language status for this gender-population combination}
#'   \item{SES Pattern}{`<chr>` a regular expression to match the correct economic status for this gender-population combination}
#' }
"SEMI_JOINS_FOR_WISEDASH_LOCAL"

## SPECIFICATIONS FOR READING DATA
## - these should actually be in a different package dedicated to processing
##   outputs from WISEDash local.

#' Column specification for data from WISEDash about student growth in MAP scores
#'
#' @format ## SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH
#' A list of 13 name-datatype pairs
#' \describe{
#'   \item{Student ID}{`<int>`}
#'   \item{Name}{`<chr>`}
#'   \item{Status}{`<chr>`}
#'   \item{Current School}{`<chr>`}
#'   \item{Curr. Grade}{`<chr>`}
#'   \item{Gender}{`<chr>`}
#'   \item{Race/Ethnicity}{`<chr>`}
#'   \item{EL}{`<chr>`}
#'   \item{SPED}{`<chr>`}
#'   \item{Test Growth Result}{`<chr>`}
#'   \item{Test Growth Period}{`<chr>`}
#'   \item{Year}{`<chr>`}
#'   \item{Test Growth Percentile}{`<dbl>`}
#' }
"SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH"

#' Column specification for data from WISEDash about student MAP percentile scores
#'
#' @format ## SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES
#' A list of 16 name-datatype pairs
#' \describe{
#'   \item{Student ID}{`<int>`}
#'   \item{Name}{`<chr>`}
#'   \item{Status}{`<chr>`}
#'   \item{Current School}{`<chr>`}
#'   \item{Curr. Grade}{`<chr>`}
#'   \item{Gender}{`<chr>`}
#'   \item{Race/Ethnicity}{`<chr>`}
#'   \item{EL}{`<chr>`}
#'   \item{SPED}{`<chr>`}
#'   \item{Percentile Score}{`<chr>`}
#'   \item{Percentile}{`<dbl>`}
#'   \item{Norm Lvl}{`<chr>`}
#'   \item{School Year}{`<chr>`}
#' }
"SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES"
