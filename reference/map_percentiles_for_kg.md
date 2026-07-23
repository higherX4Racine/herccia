# Import and wrangle WISEDash Local data about Kindergartners' percentile scores on MAP reading

This function both reads a raw CSV output from WISEDash Local and
wrangles it into a CIA-friendly format. In particular, it converts the
percentile scores into counts of Kindergarten readiness by considering
any percentile above the `.standard` argument to be "ready."

## Usage

``` r
map_percentiles_for_kg(.filepath, .standard)
```

## Arguments

- .filepath:

  string, one or more full paths to raw data files

- .standard:

  float, the minimum percentile to count as proficient. 0-100 scale.

## Value

a data frame with 9 columns

## Details

The returned value will have the following structure:

- File Name:

  The [`basename()`](https://rdrr.io/r/base/basename.html) of the
  .filepath argument

- Gender:

  A gender identity like "All," "Female," "Male," or "Non-binary."

- Race/Ethnicity:

  A racial or ethnic identity from [WISEDash's
  options](https://dpi.wi.gov/wise/data-elements/race)

- EL:

  Whether ("Yes") or not ("No") a student is an English Language Learner

- School Year:

  The school year in YY-YY format

- N:

  The number of children in a combination of Gender, Race, and EL with
  percentile scores that exceeded the `.standard`

- D:

  The number of children in a combination of Gender, Race, and EL

- Year:

  The school year in YYYY-YYYY format

- Grade:

  Always "KG"

## See also

[`read_wisedash_local()`](https://higherx4racine.github.io/herccia/reference/read_wisedash_local.md)
