
<!-- README.md is generated from README.Rmd. Please edit that file -->



[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/Lock5withR)](http://cran.r-project.org/web/packages/Lock5withR)
[![Travis-CI Build Status](https://travis-ci.org/rpruim/Lock5withR.svg?branch=master)](https://travis-ci.org/rpruim/Lock5withR)

Lock5withR
==========

This R Companion to 
[Statistics: Unlocking the Power of Data](http://lock5stat.com/)
by Lock, Lock, Lock, Lock, and Lock provides

 * a companion text 
 * an R package (`Lock5withR`)

## Companion Text

 * *Lock5 with R*, a companion to *Statistics: Unlocking the Power of Data* 
 is available 
 [as a PDF](https://github.com/rpruim/Lock5withR/blob/master/Book/Lock5withR.pdf) 
 * The authors are Randall Pruim and Lana Park.  
 
## R Package

The `Lock5withR` package can be installed from github using


```r
devtools::install_github("rpruim/Lock5withR")
```

This package contains all of the data sets used in the package and the `locket()` function which can be used to run any of 
417 code chunks from the campanion.  

For example:


```r
require(Lock5withR)
require(mosaic)
```

```r
locket("Example2.11")
#> 
#> 
#> 	locket(Example2.11)
#> 	------ ~~~~~~~~~~~
#> 
#> > ICU20 <- subset(ICUAdmissions, Age=="20")
#> 
#> > mean(~HeartRate, data=ICU20)
#> [1] 82.2
#> 
#> > median(~HeartRate, data=ICU20)
#> [1] 80
#> 
#> > ICU55 = subset(ICUAdmissions, Age=="55")
#> 
#> > mean(~HeartRate, data=ICU55)
#> [1] 108.5
#> 
#> > median(~HeartRate, data=ICU55)
#> [1] 106
```

### Relationship to `Lock5Data`

The Locks have created an R package called `Lock5Data` that contains the data sets from their text.
Some of these data sets have been modified in `Lock5withR` to make them easier to use with R.  Modified data sets include the following:

```
AllCountries    BikeCommute      BodyTemp50       CaffeineTaps 
CarbonDioxide   CO2              EmployedACS      Flight179 
GPAGender       ICUAdmissions    MiamiHeat        MindsetMatters 
NFLScores2011   NutritionStudy   RestaurantTips   RetailSales 
SalaryGender    SampCountries    SandP500         SleepStudy 
SpeedDating     StudentSurvey    USStates         WaterTaste 
Wetsuits
```
Typically changes involved the inclusion of additional variables with better encodings.  Somtimes 
variables are replaced.  In the case of `CO2` the data set has been renamed `AtmosphericCO2` to 
avoid a name collision with a data set in the `datasets` package.

The `locket()` function is only available in `Lock5withR`.
