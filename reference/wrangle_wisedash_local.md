# Wrangle data from WISEDash Local into a CIA-friendly format

Wrangle data from WISEDash Local into a CIA-friendly format

## Usage

``` r
wrangle_wisedash_local(.DATA, .success_column, .pred, ...)
```

## Arguments

- .DATA:

  `<tbl>` something made by
  [`read_wisedash_local()`](https://higherx4racine.github.io/herccia/reference/read_wisedash_local.md)

- .success_column:

  `<chr>` the column to examine for success

- .pred:

  `<fun>` a predicate function for determining success

- ...:

  [`dynamic-dots`](https://rlang.r-lib.org/reference/dyn-dots.html) Any
  additional grouping columns (using
  [tidyselect::select_helpers](https://tidyselect.r-lib.org/reference/language.html))

## Value

a data frame with some WISEDash Local columns and some CIA columns
