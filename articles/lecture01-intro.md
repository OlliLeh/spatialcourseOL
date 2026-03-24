# lecture01-intro

Welcome to the course “Appelied Spatial Data Analysis and Research”
course details:
<https://opas.peppi.uef.fi/en/course/YH00EM30/135183?period=2025-2026>

## What is R?

### Why should we learn R?

R follows a type inference coding structure and provides a wide variety
of statistical and graphical techniques, including;

- Linear and non-linear modelling
- Univariate & Multivariate Statistics
- Classical statistical tests
- Time-series analysis/ Econometrics
- Simulation and Modelling
- Datamining-classification, clustering etc.

For computationally intensive tasks, C, C++, and Fortran code can be
linked and called at run time.

R is easily extensible through functions and extensions, and the R
community is noted for its active contributions in terms of packages.

``` r
# Number of R Packages
length(available.packages(repos = "http://cran.us.r-project.org")[, 1])
#> [1] 23425
```

### Installing R and RStudio on Windows

The latest version of R can be download from the R homepage.

R download page: <http://www.cran.r-project.org/bin/windows/base/> The
page also provides some instructions and FAQ’s on R installation.

RStudio IDE ( IDE: Integrated Development Environment) is a powerful and
productive user interface for R.

It’s free and open source, and works great on Windows, Mac, and Linux

### RStudio GUI/IDE

RStudio GUI is composed of 4 panes which can be rearranged according to
the requirements.

There are a lot of short introductions to RStudio available online so we
will not go into more details.

Download Rstudio from here
<https://rstudio.com/products/rstudio/download/#download>

### Installing Packages

The easiest way to install packages is to do it via R console. The
command install.packages(“package name”) installs R packages directly
from internet. Other options to install various dependencies to a
package can be easily specified when calling this function. A call to
this function asks the user to chose a CRAN mirror at the first
instance.

Run the following to install Quantreg package on R. Also use the help
function to get the details.

``` r
# Install a package using RStudio Console
install.packages("sf", dependencies = c("Depends", "Suggests"))
#> Installing package into '/home/runner/work/_temp/Library'
#> (as 'lib' is unspecified)
```

``` r
install.packages(c("reshape2", "foreign", "ggplot2", "stargazer"), dependencies = TRUE)
#> Installing packages into '/home/runner/work/_temp/Library'
#> (as 'lib' is unspecified)
# to be updated
```

### Getting Help

As R is constantly evolving and new functions/packages are introduced
every day it is good to know sources of help. The most basic help one
can get is via the help() function. This function shows the help file
for a function which has been created by package managers.

``` r
help("function name")
#> No documentation for 'function name' in specified packages and libraries:
#> you could try '??function name'
```

All the R packages (with few exceptions) have a user’s manual listing
the functions in a package. This can be downloaded in PDF format from
the R package download page2.

R also provides some search tools given at
[http://cran.r-project.org/search.html](http://cran.r-project.org/search.md)
The R Site search is helpful in searching for topics related to problem
in hand.

Other than these various good R related blogs are on the internet which
can be really helpful. A combined upto date view of 452 contributed
blogs can be found at R-bloggers3.

Over all there quite a big community of R Users and help can be found
for most of the topics.

``` r
library(spatialcourseOL)
usethis::use_pkgdown()
#> ✔ Setting active project to
#>   "/home/runner/work/spatialcourseOL/spatialcourseOL".
#> ℹ Leaving _pkgdown.yml unchanged.
#> ☐ Edit _pkgdown.yml.
```
