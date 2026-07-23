# Count up successes and failures based upon

Count up successes and failures based upon

## Usage

``` r
success_subtotals(.x, .success_field, ...)
```

## Arguments

- .x:

  a data frame with at least one true/false column and at least one
  demographic column

- .success_field:

  the column with true/false values that designate succes

- ...:

  \<[`dynamic-dots`](https://rlang.r-lib.org/reference/dyn-dots.html)\>
  names of columns to group by

## Value

a new data frame with `...`, "N" (the count of successes), and "D" (the
size of the cohort)
