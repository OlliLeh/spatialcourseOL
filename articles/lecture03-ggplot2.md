# Lecture 3: ggplot2

## ggplot2

ggplot2 is a widely used data visualization package in R that lets you
create clear, powerful, and customizable plots using a consistent and
logical system called the Grammar of Graphics.

More details: <https://ggplot2.tidyverse.org/>

![ggplot2 logo](figures/ggplot2_figure.png)

ggplot2 logo

Why ggplot2 is so popular:

- Declarative and readable
- Easy to extend and modify
- Produces publication-quality figures
- Works perfectly with tidy data
- Excellent support for statistical graphics

ggplot2 has also an official extension mechanism which means that others
can now easily create their own stats, geoms and positions, and provide
them in other packages. You can find more information from here:

<https://exts.ggplot2.tidyverse.org/ggiraph.html>

Please, take a look also to this webpage:

<https://github.com/erikgahner/awesome-ggplot2>

#### Core idea: “Grammar of Graphics”

Instead of choosing a plot type (like “bar plot” or “scatter plot”)
directly, ggplot2 builds plots by combining components (“layers”):

- Data – what you want to plot
- Aesthetics (aes) – how variables map to visuals (x, y, color, size, …)
- Geoms – what geometric objects to draw (points, lines, bars, …)
- Scales – how values map to colors, sizes, axes
- Facets – splitting plots into panels
- Themes – visual appearance (fonts, background, gridlines)

You add these components together using +.

##### A simple example

``` r
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()
```

![](lecture03-ggplot2_files/figure-html/unnamed-chunk-1-1.png)

This means:

- Data: mtcars
- x-axis: weight (wt)
- y-axis: miles per gallon (mpg)
- Geom: points (scatter plot)

##### Adding more layers

``` r
ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(
    title = "Fuel efficiency vs car weight",
    x = "Weight",
    y = "Miles per gallon"
  )
#> `geom_smooth()` using formula = 'y ~ x'
```

![](lecture03-ggplot2_files/figure-html/unnamed-chunk-2-1.png)

Here you extend the same plot by:

- adding a regression line
- adding labels

##### How it differs from base R plots

Base R:

``` r
plot(mtcars$wt, mtcars$mpg)
```

![](lecture03-ggplot2_files/figure-html/unnamed-chunk-3-1.png)

ggplot2:

``` r
ggplot(mtcars, aes(wt, mpg)) + geom_point()
```

![](lecture03-ggplot2_files/figure-html/unnamed-chunk-4-1.png)

ggplot2 is:

- more structured
- more consistent
- easier to build complex plots incrementally

#### An introduction to data visualization using R programming
