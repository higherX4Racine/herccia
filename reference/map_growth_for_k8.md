# Import and wrangle WISEDash Local data about students' growth on MAP reading

This function both reads a raw CSV output from WISEDash Local and
wrangles it into a CIA-friendly format. In particular, it uses the "Test
Growth Result" field to count the number of students who met or exceeded
their growth goal. **CAVEAT** the file name(s) must contain grade
information.

## Usage

``` r
map_growth_for_k8(
  .filepath,
  .basename_prefix,
  .grade_pattern,
  .basename_suffix = ".*"
)
```

## Arguments

- .filepath:

  string, one or more full paths to raw data files

- .basename_prefix:

  string, a regex to match the parts of file names that appear before
  the grade

- .grade_pattern:

  string, a regex to match the part of the file name containing the
  grade level

- .basename_suffix:

  string, a regex to match the parts of file names that appear after the
  grade

## Value

a data frame with 9 columns

## Details

The returned value will have the following structure:

- Grade:

  A zero-padded two-digit grade such as "03" or "08"

- Gender:

  A gender identity like "All," "Female," "Male," or "Non-binary."

- Race/Ethnicity:

  A racial or ethnic identity from [WISEDash's
  options](https://dpi.wi.gov/wise/data-elements/race)

- EL:

  Whether ("Yes") or not ("No") a student is an English Language Learner

- Year:

  The school year in YYYY-YYYY format

- N:

  The number of children in a combination of Gender, Race, and EL that
  met their growth goals.

- D:

  The number of children in a combination of Gender, Race, and EL

## See also

[`read_wisedash_local()`](https://higherx4racine.github.io/herccia/reference/read_wisedash_local.md)
