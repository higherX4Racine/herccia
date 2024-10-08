% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrangle_local_postsecondary_completers.R
\name{wrangle_local_postsecondary_completers}
\alias{wrangle_local_postsecondary_completers}
\title{Wrangle raw IPEDS graduation data for local schools into the local 150\% postsecondary completion rate}
\usage{
wrangle_local_postsecondary_completers(.ipeds_grad_data, .unit_ids)
}
\arguments{
\item{.ipeds_grad_data}{a data frame with GR data a la \code{\link[hercipeds:read_graduation_rates]{hercipeds::read_graduation_rates()}}}

\item{.unit_ids}{the UNITID codes for all of the local schools}
}
\value{
a data frame ready for \code{\link[=to_wide_cia_format]{to_wide_cia_format()}}
}
\description{
Wrangle raw IPEDS graduation data for local schools into the local 150\% postsecondary completion rate
}
