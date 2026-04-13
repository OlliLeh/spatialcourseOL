# assignment02-data2

## Assignment 02: ggplot2 and regression analysis

### ggplot (Lecture 03)

#### 1.

Describe the PAAVO dataset for the year 2025. In this exercise, use the
following variables:

- pt_tyott (unemployed persons)
- pt_vakiy (total population)
- hr_mtu (median income of residents)

Using these variables, create the following visualizations with the
ggplot2 package:

1.  A histogram of the unemployment rate in postal code areas
2.  A scatter plot showing the relationship between the unemployment
    rate and residents’ median income

#### 2.

Add a regression line and a non‑parametric smoothing curve to the
scatter plot created above (unemployment rate and median income).

Based on visual interpretation:

- How are these related to each other?
- What can you conclude about the differences between the fitted curves?

#### 3.

Create a map of postal code areas and add the figures created in the
previous tasks to it.

You may use the patchwork package to compose the figure. Guidance on
loading the data into R can be found in Lecture 04 (Regression
analysis).

### Regression analysis (Lecture 04)

#### 4.

The dataset teengamb (available in the faraway package) concerns a study
of teenage gambling in Britain.

Create numerical and graphical summaries of the data and comment on any
features you find interesting. Limit the output to a level that a busy
reader would find sufficient for gaining a basic understanding of the
dataset.

You can load the data using:

    library(faraway)
    data(teengamb)

#### 5.

Using the teengamb dataset, fit a regression model with gambling
expenditure as the response variable and sex, status, income, and verbal
score as predictors.

Present the output and answer the following questions:

1.  What percentage of variation in the response is explained by these
    predictors?
2.  Which observation has the largest (positive) residual? Give the case
    number.
3.  Compute the mean and median of the residuals.

#### 6.

Continue by fitting a model with income only as a predictor.

Use an F-test to compare this model to the full model.

#### 7.

Use the PAAVO dataset loaded in Task 1 and fit a regression model
explaining the unemployment rate of postal code areas using median
income and the share of highly educated individuals among the educated
population.

1.  Fit the model using basic regression with the lm() function and
    interpret the results.
2.  Evaluate and interpret the model diagnostics. Repeat the diagnostic
    procedures from the section “Regression diagnostics” (Lecture 04).
3.  Visualize the model fitted values on a map.

#### 8.

Continue the interpolation example provided in the course materials by
creating an interpolated surface from a binomial model, where the
response variable is Moderate Growth (More Than 100 Jobs).

Construct the binomial model in the same way as in the example
(Regression analysis and open postcode area data) and repeat the
interpolation code using this model.

Briefly explain what you can conclude from the interpolated surface.

After completing the exercises, save your solutions (including code) to
your portfolio.
