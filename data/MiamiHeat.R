load('MiamiHeat.rda')


MiamiHeat <- transform(MiamiHeat , MDY = lubridate::mdy(as.character(Date)) )
