# Wrangle raw IPEDS graduation data for local schools into the local 150% postsecondary completion rate

Wrangle raw IPEDS graduation data for local schools into the local 150%
postsecondary completion rate

## Usage

``` r
wrangle_ipeds_graduates(.DATA, ...)
```

## Arguments

- .DATA:

  a data frame with GR data a la
  [`hercipeds::read_graduates()`](https://higherx4racine.github.io/hercipeds/reference/read_graduates.html)

- ...:

  Arguments passed on to
  [`dplyr::filter`](https://dplyr.tidyverse.org/reference/filter.html)

  `.by`

  :   \<[`tidy-select`](https://dplyr.tidyverse.org/reference/dplyr_tidy_select.html)\>
      Optionally, a selection of columns to group by for just this
      operation, functioning as an alternative to
      [`group_by()`](https://dplyr.tidyverse.org/reference/group_by.html).
      For details and examples, see
      [?dplyr_by](https://dplyr.tidyverse.org/reference/dplyr_by.html).

  `.preserve`

  :   Relevant when the `.data` input is grouped. If `.preserve = FALSE`
      (the default), the grouping structure is recalculated based on the
      resulting data, otherwise the grouping is kept as is.

## Value

a data frame ready for
[`to_wide_cia_format()`](https://higherx4racine.github.io/herccia/reference/to_wide_cia_format.md)
