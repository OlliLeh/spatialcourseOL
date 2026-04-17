# assignment03-data

``` r
library(spatialcourseOL)
```

## Assignment 03: Working with Spatial Data

### Nonparametric regression (lecture05):

Create a nonparametric regression model to explain the median income of
residents in postal code areas (variable hr_mtu) as a function of
distance to the Joensuu market square. Use all postal code areas of
North Karelia as the dataset.

Calculate the distances to the Joensuu market square in the same way as
in the example on housing costs in Lecture 5. You may use the same
reference point as in the exercise. Download the postal code area data
from Statistics Finland’s WFS service.

1.  Produce a figure showing the nonparametric regression analysis.
2.  In addition to the nonparametric model, add a linear regression
    line.
3.  Briefly interpret the results of both models in a few sentences.

Add to your portfolio the code you used, the figure showing the
nonparametric model results, and your interpretation of the results.

### PCA and cluster analysis (Multivariate analysis (lecture06)):

In this exercise, you will examine different multivariate methods using
your own dataset. You may freely choose the dataset that you use, but it
must be suitable for both principal component analysis (PCA) and cluster
analysis.

The dataset should allow you to first perform PCA and then apply cluster
analysis based on the principal components. Create a similar analysis
workflow as in Lecture 6.

For each of the two analyses, you should:

1.  explain why you selected the chosen variables and why they are
    suitable for the analysis,
2.  explain the code used in the analysis,
3.  interpret and discuss the results, and
4.  visualize the results using a map.

If you do not have own data, you could use, for instance, **Sotkanet**
(see lecture notes for details):

<https://sotkanet.fi/sotkanet/fi/index> (use the variables of the Social
environment of population)

``` r
# Load the sotkanet package
library(sotkanet)

# Download selected indicators for year 2019 at municipality level
data <- GetDataSotkanet(
  indicators = c(181, 3562, 5, 1275, 3099, 182, 761, 3195,
    3076, 453, 179, 304, 313, 2320, 2343, 3126),
  years = 2019,  region.category = "KUNTA")
```

In practice, the data used in this lecture are stored locally in the
package to ensure reproducibility, avoid external API dependencies, and
guarantee successful package building. The data are read from the
package’s extdata directory as follows:

``` r
data <- readRDS(
  system.file("extdata", "sotkanet_2019.rds",
              package = "spatialcourseOL"))
```

or **PAAVO postal code area** (see lecture notes for details):
<https://stat.fi/en/services/statistical-data-services/statistical-databases/paavo>

We begin by downloading postcode area data using a Web Feature Service
(WFS) query.

``` r
url <-list(hostname ="geo.stat.fi/geoserver/postialue/wfs",
           scheme ="https",
           query =list(service ="WFS",
                       version ="2.0.0",
                       request ="GetFeature",
                       typename ="postialue:pno_tilasto_2025",
                       outputFormat ="json"))%>%
  setattr("class","url")
request <-build_url(url)
p25 <-st_read(request)
```

or **Statistics Finland’s** databases can be accessed programmatically
using the PxWeb API. The R package pxweb allows interactive browsing of
databases and downloading data directly into R for reproducible
analysis.

``` r
library(pxweb)
d <- pxweb_interactive("https://pxdata.stat.fi/PXWeb/api/v1/fi")
```

This is more flexible and powerful, but requires some familiarity with
APIs and data structures.

**After you have created a solution for exercise, save them with code to
your portfolio.**
