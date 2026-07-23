# A lookup table for mapping demographic information from WISEDash Local to StriveTogether formats

A lookup table for mapping demographic information from WISEDash Local
to StriveTogether formats

## Usage

``` r
SEMI_JOINS_FOR_WISEDASH_LOCAL
```

## Format

### SEMI_JOINS_FOR_WISEDASH_LOCAL

An object of class `spec_tbl_df` (inherits from `tbl_df`, `tbl`,
`data.frame`) with 36 rows and 6 columns.

- Gender:

  `<chr>` a StriveTogether gender identity

- Population:

  `<chr>` a StriveTogether race/ethnicity, language status, or economic
  status

- Gender Pattern:

  `<chr>` a regular expression to match the correct genders for this
  gender-population combination

- Race Pattern:

  `<chr>` a regular expression to match the correct races for this
  gender-population combination

- EL Pattern:

  `<chr>` a regular expression to match the correct language status for
  this gender-population combination

- SES Pattern:

  `<chr>` a regular expression to match the correct economic status for
  this gender-population combination
