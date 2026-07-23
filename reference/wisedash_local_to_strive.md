# Compute marginal totals for the CIA from student-level data from WISEDash Local

Compute marginal totals for the CIA from student-level data from
WISEDash Local

## Usage

``` r
wisedash_local_to_strive(.DATA, .success_column, .pred, ...)
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

a data frame with columns that will help with pasting into the CIA
