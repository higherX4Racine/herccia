% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{SPEC_FOR_WISEDASH_HS_COMPLETION}
\alias{SPEC_FOR_WISEDASH_HS_COMPLETION}
\title{Column specification for data from WISEDash about High School Completion}
\format{
\subsection{SPEC_FOR_WISEDASH_HS_COMPLETION}{

\describe{
\item{SCHOOL_YEAR}{\if{html}{\out{<chr>}} the school year, in YYYY-YY format}
\item{AGENCY_TYPE}{\if{html}{\out{<chr>}} helps distinguish between district-run and independent charter schools}
\item{CHARTER_IND}{\if{html}{\out{<chr>}} whether or not a school is a charter}
\item{CESA}{\if{html}{\out{<chr>}}, which CESA, if any, the school belongs to}
\item{COUNTY}{\if{html}{\out{<chr>}}, the county that the school is located in}
\item{DISTRICT_CODE}{\if{html}{\out{<chr>}} the four-number code for each district, or "[Statewide]"}
\item{SCHOOL_CODE}{\if{html}{\out{<chr>}} the six-digit code for a school, or "[Districtwide]"}
\item{GRADE_GROUP}{\if{html}{\out{<chr>}} elementary, middle, high, k-12, etc.}
\item{DISTRICT_NAME}{\if{html}{\out{<chr>}} a human-readable name for a district. Not consistent across years}
\item{SCHOOL_NAME}{\if{html}{\out{<chr>}} a human-readable name for a school. Not consistent across years}
\item{COHORT}{\if{html}{\out{<int>}} expected graduation year, e.g. 2010 for the 2009-10 school year}
\item{COMPLETION_STATUS}{\if{html}{\out{<chr>}} graduated normally, graduated with HSED, continuing, not}
\item{GROUP_BY}{\if{html}{\out{<chr>}} demographic categories like race or gender}
\item{GROUP_BY_VALUE}{\if{html}{\out{<chr>}} demographic groups like Asian or Trans}
\item{TIMEFRAME}{\if{html}{\out{<chr>}} whether it is the 4-, 5-, or 6-year rate, etc.}
\item{COHORT_COUNT}{\if{html}{\out{<int>}} the number of students who could have completed high school}
\item{STUDENT_COUNT}{\if{html}{\out{<int>}} the number of students who completed high school}
}
}
}
\source{
\url{https://dpi.wi.gov/wisedash/download-files/type?field_wisedash_upload_type_value=hs-completion}
}
\usage{
SPEC_FOR_WISEDASH_HS_COMPLETION
}
\description{
Column specification for data from WISEDash about High School Completion
}
\keyword{datasets}
