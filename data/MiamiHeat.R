load('MiamiHeat.rda')


if (require(lubridate)) {
  MiamiHeat <- transform(MiamiHeat , MDY = mdy(as.character(Date)) )
} else {
  MiamiHeat <- transform(MiamiHeat , MDY = as.character(Date)) 
}
