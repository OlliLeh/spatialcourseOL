# Regional classification data for Finland

A dataset containing administrative, functional, and policy-related
regional classifications for Finnish municipalities. The data links
municipality identifiers to multiple regional hierarchies used in
statistical reporting, regional planning, and development policies.

## Usage

``` r
aluejaot2
```

## Format

A data frame with one row per municipality and the following columns:

- tunnus:

  Municipality identifier (numeric or character code).

- nimi22:

  Municipality name (2022 classification).

- NUTS.1:

  NUTS level 1 region (EU statistical classification).

- Tukialue:

  National support area classification (Finnish regional aid zones).

- ELY.keskus:

  ELY Centre (Centre for Economic Development, Transport and the
  Environment).

- Suuralue:

  Major region (large-area division used in planning and statistics).

- Maakunta:

  Region / Province (maakunta).

- Seutukunta:

  Sub-region (seutukunta).

- Leader:

  LEADER local action group area.

- Alueluokka:

  National regional typology (Finnish classification).

- Kuntaryhma:

  Municipality group classification (e.g. urban, rural, semi-urban).

- Alueluokka_eng:

  English translation of the regional typology.

## Source

Compiled from official Finnish administrative and statistical regional
classifications.

## Details

This dataset is typically used as a lookup table to join regional
classifications with statistical indicators (e.g. population,
employment, economic development). It enables analysis and visualisation
across multiple spatial scales, including EU regions, Finnish provinces,
and functional local areas.
