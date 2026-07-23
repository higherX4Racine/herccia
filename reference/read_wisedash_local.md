# Import data from WISEDash Local into a CIA-friendly format

Import data from WISEDash Local into a CIA-friendly format

## Usage

``` r
read_wisedash_local(.files, .spec)
```

## Arguments

- .files:

  `<chr[]>` an array of paths to csv files that contain data from
  WISEDash Local

- .spec:

  `<chr[]>` a list of column specifications for
  [`readr::read_csv()`](https://readr.tidyverse.org/reference/read_delim.html)

## Value

a data frame with columns defined by `.spec`
