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

#' The literal row labels for different populations that StriveTogether wants
#'
#' @format ## OUTPUT_POPULATIONS
#' \describe{
#'   \item{Gender}{either "All", "Male", or "Female}
#'   \item{Population}{some racial, ethnic, language-learner, and economic categories}
#' }
"OUTPUT_POPULATIONS"

#' Column specification for data from WISEDash about student growth in MAP scores
#'
#' @format ## SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH
#' \describe{
#'   \item{Student ID}{<integer>}
#'   \item{Name}{<character>}
#'   \item{Status}{<character>}
#'   \item{Current School}{<character>}
#'   \item{Curr. Grade}{<character>}
#'   \item{Gender}{<character>}
#'   \item{Race/Ethnicity}{<character>}
#'   \item{EL}{<character>}
#'   \item{SPED}{<character>}
#'   \item{Test Growth Result}{<character>}
#'   \item{Test Growth Period}{<character>}
#'   \item{Year}{<character>}
#'   \item{Test Growth Percentile}{<double>}
#' }
"SPEC_FOR_WISEDASH_LOCAL_MAP_GROWTH"

#' Column specification for data from WISEDash about student MAP percentile scores
#'
#' @format ## SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES
#' \describe{
#'   \item{Student ID}{<int>}
#'   \item{Name}{<chr>}
#'   \item{Status}{<chr>}
#'   \item{Current School}{<chr>}
#'   \item{Curr. Grade}{<chr>}
#'   \item{Gender}{<chr>}
#'   \item{Race/Ethnicity}{<chr>}
#'   \item{EL}{<chr>}
#'   \item{SPED}{<chr>}
#'   \item{Percentile Score}{<chr>}
#'   \item{Percentile}{<dbl>}
#'   \item{Norm Lvl}{<chr>}
#'   \item{School Year}{<character>}
#' }
"SPEC_FOR_WISEDASH_LOCAL_MAP_PERCENTILES"

#' Column specification for data from WISEDash about High School Completion
#'
#' @format ## SPEC_FOR_WISEDASH_HS_COMPLETION
#' \describe{
#'   \item{SCHOOL_YEAR}{<chr> the school year, in YYYY-YY format}
#'   \item{AGENCY_TYPE}{<chr> helps distinguish between district-run and independent charter schools}
#'   \item{CHARTER_IND}{<chr> whether or not a school is a charter}
#'   \item{CESA}{<chr>, which CESA, if any, the school belongs to}
#'   \item{COUNTY}{<chr>, the county that the school is located in}
#'   \item{DISTRICT_CODE}{<chr> the four-number code for each district, or "\[Statewide\]"}
#'   \item{SCHOOL_CODE}{<chr> the six-digit code for a school, or "\[Districtwide\]"}
#'   \item{GRADE_GROUP}{<chr> elementary, middle, high, k-12, etc.}
#'   \item{DISTRICT_NAME}{<chr> a human-readable name for a district. Not consistent across years}
#'   \item{SCHOOL_NAME}{<chr> a human-readable name for a school. Not consistent across years}
#'   \item{COHORT}{<int> expected graduation year, e.g. 2010 for the 2009-10 school year}
#'   \item{COMPLETION_STATUS}{<chr> graduated normally, graduated with HSED, continuing, not}
#'   \item{GROUP_BY}{<chr> demographic categories like race or gender}
#'   \item{GROUP_BY_VALUE}{<chr> demographic groups like Asian or Trans}
#'   \item{TIMEFRAME}{<chr> whether it is the 4-, 5-, or 6-year rate, etc.}
#'   \item{COHORT_COUNT}{<int> the number of students who could have completed high school}
#'   \item{STUDENT_COUNT}{<int> the number of students who completed high school}
#' }
#' @source <https://dpi.wi.gov/wisedash/download-files/type?field_wisedash_upload_type_value=hs-completion>
"SPEC_FOR_WISEDASH_HS_COMPLETION"


#' Column specification for data from WISEDash about Postsecondary Enrollment
#'
#' @format ## SPEC_FOR_WISEDASH_PS_ENROLLMENT
#' \describe{
#'   \item{SCHOOL_YEAR}{<chr> the school year, in YYYY-YY format}
#'   \item{AGENCY_TYPE}{<chr> helps distinguish between district-run and independent charter schools}
#'   \item{CHARTER_IND}{<chr> whether or not a school is a charter}
#'   \item{CESA}{<chr>, which CESA, if any, the school belongs to}
#'   \item{COUNTY}{<chr>, the county that the school is located in}
#'   \item{DISTRICT_CODE}{<chr> the four-number code for each district, or "\[Statewide\]"}
#'   \item{SCHOOL_CODE}{<chr> the six-digit code for a school, or "\[Districtwide\]"}
#'   \item{GRADE_GROUP}{<chr> elementary, middle, high, k-12, etc.}
#'   \item{DISTRICT_NAME}{<chr> a human-readable name for a district. Not consistent across years}
#'   \item{SCHOOL_NAME}{<chr> a human-readable name for a school. Not consistent across years}
#'   \item{INITIAL_ENROLLMENT}{<chr> the time lag between graduation and enrollment}
#'   \item{INSTITUTION_LOCATION}{<chr> in-state or out-of-state}
#'   \item{INSTITUTION_LEVEL}{<chr> 2-year or 4-year}
#'   \item{INSTITUTION_TYPE}{<chr> public or private}
#'   \item{GROUP_BY}{<chr> demographic categories like race or gender}
#'   \item{GROUP_BY_VALUE}{<chr> demographic groups like Asian or Trans}
#'   \item{GROUP_COUNT}{<int> the number of students who could have enrolled in postsecondary education}
#'   \item{STUDENT_COUNT}{<int> the number of students who enrolled in postsecondary education}
#' }
#' @source <https://dpi.wi.gov/wisedash/download-files/type?field_wisedash_upload_type_value=Postsecondary>
"SPEC_FOR_WISEDASH_PS_ENROLLMENT"

#' A lookup table for mapping demographic information from WISEDash Local to StriveTogether formats
#' @format ## JOIN_PATTERNS_FOR_WISEDASH_LOCAL
#' \describe{
#' \item{Gender}{<chr> a StriveTogether gender identity}
#' \item{Population}{<chr> a StriveTogether race/ethnicity, language status, or economic status}
#' \item{Gender Pattern}{a regular expression to match the correct genders for this gender-population combination}
#' \item{Race Pattern}{a regular expression to match the correct races for this gender-population combination}
#' \item{EL Pattern}{a regular expression to match the correct language status for this gender-population combination}
#' \item{SES Pattern}{a regular expression to match the correct economic status for this gender-population combination}
#' }
"JOIN_PATTERNS_FOR_WISEDASH_LOCAL"

#' A lookup table for mapping from StriveTogether race/ethnicities to those used by the Census, WISEDash Public, and WISEDash Local
#' @format ## STRIVE_TOGETHER_RACE_ETHNICITIES
#' \describe{
#' \item{Strive}{<fct> ordered population identities}
#' \item{Census Race/Ethnicity}{<chr> Census-defined racial and ethnic identities}
#' \item{WISEDash Public}{<chr> Racial and ethnic identities as they appear in WISEDash Public}
#' \item{WISEDash Local}{<chr> Racial and ethnic identities as they appear in WISEDash Local}
#' }
"STRIVE_TOGETHER_RACE_ETHNICITIES"

#' Variables from the US Census to describe postsecondary completion by language spoken
#' @format ## POSTSECONDARY_BY_LANGUAGE
"POSTSECONDARY_BY_LANGUAGE"

#' Variables from the US Census to describe postsecondary completion by poverty status
#' @format ## POSTSECONDARY_BY_POVERTY
"POSTSECONDARY_BY_POVERTY"

#' Variables from the US Census to describe postsecondary completion by sex and race/ethnicity
#' @format ## POSTSECONDARY_BY_SEX_AND_RACE
"POSTSECONDARY_BY_SEX_AND_RACE"

#' Values of education levels from the US Census to describe postsecondary completion
#' @format ## POSTSECONDARY_EDUCATION_LEVELS
"POSTSECONDARY_EDUCATION_LEVELS"

#' Mapping from Census demographic categories to StriveTogether ones
#' @format ## CENSUS_POPULATIONS
"CENSUS_POPULATIONS"

#' Mapping from Census income brackets to dollar values
#' @format ## INCOME_BRACKETS
"INCOME_BRACKETS"

#' Mapping from IPEDS populations to StriveTogether ones
#' @format ## IPEDS_POPULATIONS
"IPEDS_POPULATIONS"
