# Estimate the number of people living in a household with a family-sustaining income

Estimate the number of people living in a household with a
family-sustaining income

## Usage

``` r
wrangle_acs_employment(.raw_acs_employment)
```

## Arguments

- .raw_acs_employment:

  `<tbl>` output from
  [`fetch_acs_employment()`](https://higherx4racine.github.io/herccia/reference/fetch_acs_employment.md)

## Value

`<tbl>` a data frame with five columns

- Year:

  `<int>` Which 5-year ACS estimate the data come from

- Gender:

  `<chr>` "All," "Female," or "Male."

- Population:

  `<chr>` The socioeconomic group that the row describes

- N:

  `<dbl>` The estimated number of people with a family-sustaining income

- D:

  `<int>` The estimated number of people in total.
