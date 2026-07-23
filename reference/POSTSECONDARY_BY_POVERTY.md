# Variables from the US Census to describe postsecondary completion by poverty status

Variables from the US Census to describe postsecondary completion by
poverty status

## Usage

``` r
POSTSECONDARY_BY_POVERTY
```

## Format

### POSTSECONDARY_BY_POVERTY

An object of class `spec_tbl_df` (inherits from `tbl_df`, `tbl`,
`data.frame`) with 12 rows and 6 columns.

- Group :

  `<chr>` the ACS table of this variable

- Index :

  `<int>` this variable's row in its ACS table

- Variable :

  `<chr>` the full specification of this variable for querying the API

- Poverty Status:

  `<chr>` either "Above" or "Below"

- Sex :

  `<chr>` the sex of people counted by this variable

- Status :

  `<chr>` the educational status of people counted by this variable
