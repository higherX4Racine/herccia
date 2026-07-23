# Reformat a long data frame into the CIA format

Reformat a long data frame into the CIA format

## Usage

``` r
to_wide_cia_format(.long_data, .year)
```

## Arguments

- .long_data:

  `<tbl>` with columns "Year", "Gender", "Population", "N", and "D".

- .year:

  the year of the CIA

## Value

a tibble with columns grouped by year, numerator, and denominator
