# assignment04-week4

## Assignment 04: Spatial autocorrelation and spatial regression

Use a data from PAAVO (postcode area data) and download data from the
server of Statistics Finland (help: see lecture notes).

In this exercise set, you will use PAAVO postcode area data provided by
Statistics Finland. The data should be downloaded directly from the
Statistics Finland server (for guidance, see the lecture notes).

More information about the PAAVO data can be found here:
<https://stat.fi/en/services/statistical-data-services/statistical-databases/paavo>

### 1. Global spatial autocorrelation

Investigate the global spatial autocorrelation of household median
income in 2025 (variable tr_mtu) across Finnish postcode areas.

- Construct three spatial weight matrices based on k nearest neighbours:
- 6 nearest neighbours
- 10 nearest neighbours
- 15 nearest neighbours
- For each weight matrix, calculate Moran’s I.

Tasks:

- Compare the values of Moran’s I across the different weight matrices.
- Explain how and why the level of spatial autocorrelation changes when
  the number of neighbours increases.

### 2. Local spatial autocorrelation

Calculate the local spatial autocorrelation of household median income
in 2025 using Local Moran’s I.

- Use the local_moran() function.
- Visualize the results using a map (see lecture notes for instructions
  on mapping Local Moran’s I results).

Tasks: - Interpret the resulting clusters (e.g. high–high, low–low). -
Explain what these clusters reveal about the spatial distribution of
household income.

### 3. Linear regression and spatial dependence

Estimate a linear regression model (OLS) where household median income
in 2025 is explained by:

- the proportion of highly educated people
- the unemployment rate

Construct the explanatory variables as relative proportions as
demonstrated in the lecture notes:

``` r

p25_data$tyottom <- (p25_data$pt_tyott / p25_data$pt_tyoll) * 100
p25_data$korkk   <- (p25_data$ko_yl_kork / p25_data$ko_koul) * 100
```

(Unemployment rate = number of unemployed / number of employed) (Share
of highly educated = number with academic degrees / number of educated
people)

Tasks: - Interpret the regression coefficients. - Evaluate whether the
results are consistent with economic intuition. - Investigate the
spatial autocorrelation of the model residuals (e.g. using Moran’s I). -
Explain what the residual spatial autocorrelation indicates about the
adequacy of the OLS model.

### 4. Spatial regression model (continuation of Exercise 3)

Extend Exercise 3 by estimating an appropriate spatial regression model
(e.g. spatial lag or spatial error model).

Tasks:

- Explain the results of the spatial regression model.
- Compare the spatial regression model with the OLS model from Exercise
  3.
- Assess whether the spatial model provides an improvement over the OLS
  model and justify your conclusion.
