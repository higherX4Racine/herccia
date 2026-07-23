# Pull one year of data about household income and populations by sex and race

These data will all come from the 5-year ACS. This function fetches
tract-level data for one county in one state

## Usage

``` r
fetch_acs_employment(.year, .state, .county, ...)
```

## Arguments

- .year:

  `<int>` the year to pull data

- .state:

  `<int>` the two-digit FIPS code for the state

- .county:

  `<chr>` the three-digit FIPS code for the county

- ...:

  Arguments passed on to
  [`hercacstables::fetch_data`](https://higherx4racine.github.io/hercacstables/reference/fetch_data.html)

  `use_key`

  :   \<lgl?\> optional, should the query include a Census API key from
      the system environment. Defaults to `TRUE`

## Value

`<tbl>` a data frame with columns based upon `...`
