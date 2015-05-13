Lock5withR
==========

This R Companion to *Statistics: Unlocking the Power of Data* by Lock, Lock, Lock, Lock, and Lock (a.k.a., Lock5) contains two main components

### R package

The R package, `Lock5withR` includes all of the data provided with the book.  Some of these are slightly different from the data sets in `Lock5Data` and work better in R.  Typical changes include recoding 0-1 variables as factors with meaningful names and ensuring levels of factors follow meaningful orders when appropriate.  Often this is done by adding additional variables to the data set, so you can work with either the original variables or our "new and improved" versions.

You can install `Lock5withR` from github using

```r
require(devtools)
install_github("rpruim/Lock5withR")
```

If you system is capable of building vignettes, you might like this even better:
```
install_github("rpruim/Lock5withR", build_vignettes=TRUE)
```

### PDF companion text demonstrating the use of R with the Lock5 text

This document shows how to use R and the `mosaic` package (available on CRAN) for all of the examples in the text. It can be used as a reference for instructors, who may choose to do some things slightly differently, or as a reference for students if the instructor follows the style quite closely.

This document is avaialable at [https://github.com/rpruim/Lock5withR/raw/master/Book/Lock5withR.pdf](https://github.com/rpruim/Lock5withR/raw/master/Book/Lock5withR.pdf)


