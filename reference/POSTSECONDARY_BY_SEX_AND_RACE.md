# Variables from the US Census to describe postsecondary completion by sex and race/ethnicity

Variables from the US Census to describe postsecondary completion by sex
and race/ethnicity

## Usage

``` r
POSTSECONDARY_BY_SEX_AND_RACE
```

## Format

### POSTSECONDARY_BY_SEX_AND_RACE

An object of class `spec_tbl_df` (inherits from `tbl_df`, `tbl`,
`data.frame`) with 1428 rows and 7 columns.

- Year :

  `<int>` the ACS vintage that this variable belongs to

- Group :

  `<chr>` the ACS table of this variable

- Index :

  `<int>` this variable's row in its ACS table

- Variable :

  `<chr>` the full specification of this variable for querying the API

- Sex :

  `<chr>` the sex of people counted by this variable

- Status :

  `<chr>` the educational status of people counted by this variable

- Census Race:

  `<chr>` the OMB race category of people counted by this variable
