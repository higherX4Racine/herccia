# Mapping from Census income brackets to dollar values

Mapping from Census income brackets to dollar values

## Usage

``` r
INCOME_BRACKETS
```

## Format

### INCOME_BRACKETS

An object of class `spec_tbl_df` (inherits from `tbl_df`, `tbl`,
`data.frame`) with 17 rows and 5 columns.

- Group:

  `<chr>` the code for the bracket's ACS table

- Index:

  `<int>` the code for the bracket's row in an ACS table

- Variable:

  `<chr>` the bracket's full variable for querying the api

- Lower:

  `<int>` the lower end of the bracket in dollars per year

- Upper:

  `<int>` the lower end of the bracket in dollars per year
