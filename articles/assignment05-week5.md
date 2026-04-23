# assignment05-week5

## Assignment 05: Geographically weighted regression

Use Statistics Finland’s Key Figures of Municipalities dataset in this
exercise. Download the entire dataset with all variables for a single
statistical year for all Finnish municipalities from the Statistics
Finland website:

<https://pxdata.stat.fi/PxWeb/pxweb/en/Kuntien_avainluvut/>

When downloading the data, select the format “Comma delimited with
heading”, so that the data are downloaded as a CSV table using a comma
as the separator.

Join this dataset in R with the municipality dataset downloaded from the
geofi package. You can save the key figures as a CSV table in your own
directory and then import the data into R. You can import the CSV table
into R, for example, using the read.csv function:

``` r
data_csv <- read.csv("data/mydata.csv")
```

The municipality dataset can be downloaded in R as follows:

``` r
municipalities25 <- geofi::get_municipalities(year = 2025)
```

After this, you can join the downloaded table to the municipality
dataset (**remember change variables names to correspond your data**):

``` r
map <- left_join(municipalities25, data_csv, by = c("kunta" = "region")) # why we use left_join?
```

Use the Key Figures of Municipalities dataset in the tasks.

## Task 1: Linear model

Create a linear regression model using the lm function where you explain
the municipal unemployment rate using:

degree of urbanisation (%), workplace self-sufficiency, and share of
persons with tertiary-level education (persons aged 15 or over, %).

Include the code you used in your answer and interpret the results of
the model.

## Task 2: Spatial autocorrelation

Continue from the previous task and test the residual spatial
autocorrelation of the global linear model. How do you interpret the
result?

## Task 3: Geographically weighted regression

Fit a GWR model corresponding to the model in Task 1. Visualise the
locally estimated regression coefficients on a map and provide an
interpretation of the results.
