# assignment01-data

## Assignment 01: Working with Spatial Data

### Basic use of R (lecture01):

1.  Create the vectors:

&nbsp;

1.  (1,2,3,…,19,20)
2.  (20,19,…,2,1)
3.  (1,2,3,…,19,20,19,18,…,2,1)
4.  (4,6,3) and assign it to the name tmp

&nbsp;

2.  Using rep () and seq () functions, create the vectors:

&nbsp;

1.  \[1\] 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 and
2.  \[1\] 0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4

&nbsp;

3.  Create a vector x which get values 1-10. Recalculate vector z values
    so that if the value of the x is less than 5, z=x-1, and if values
    of the x is something else, z=x/x.

4.  Repeat following calculation z=z+1 until z \> 100. Define first that
    z=0. Print the result after every calculation.

5.  Write a R-function which calculate average for vector x \<-
    c(1,2,3,4,5).

6.  Create a data frame with two variables: year and result. Variable
    year has values 1,2 and,3, and variable result has values 10,8
    and 9. Write a R-function that create a line plot you’re your data
    frame.

7.  Create a permutation test and analyze whether the group mean is
    different between A and B groups. Calculate also Mann-Whitney test
    for groups. Group A: {5,6,7,5,5,6,8,9,10,15,2} and group B:
    {2,8,1,14,3,15,5,6,8,14,12,3} Explain your results!

### Reading and mapping data with R (lecture02):

8.  Create a map of the regions of Finland (called maakunta4500k_2026).
    Add a north arrow and a scale bar to the map. Include both the map
    image and the code you used to create it in your portfolio answer.

9.  Create an interactive Leaflet map of your hometown and add what you
    consider the three best places in your hometown. Include the code
    you used to create the map in your portfolio answer.

10. Create a map showing the municipality level urban–rural
    classification. Use the CSV file aluejaot_muokattu2 (found in the
    course’s Elearn platform under the folder Data 31.3.2026) as your
    dataset, where the urban–rural classification is given in English in
    the variable Alueluokka_eng. Use the 2023 municipal boundaries.
    Include the code you used to create the map in your portfolio
    answer.

After you have created a solution for exercise, save them with code to
your portfolio.

``` r
library(spatialcourseOL)
```
