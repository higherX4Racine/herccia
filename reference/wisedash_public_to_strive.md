# Wrangle WISEDash Public data into a format ready for the CIA

Wrangle WISEDash Public data into a format ready for the CIA

## Usage

``` r
wisedash_public_to_strive(.x, .outcome_name, .group_name = "GROUP_COUNT")
```

## Arguments

- .x:

  data from WISEDash public, either HS graduation or PS enrollment

- .outcome_name:

  either "HS Graduation" or "Post-secondary Enrollment"

- .group_name:

  optional, defaults to "GROUP_COUNT" but HS Completion uses
  "COHORT_COUNT"

## Value

a data frame with columns "Outcome", "Year", "Gender", "Population",
"Role", and "Value"
