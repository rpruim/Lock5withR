
load('BikeCommute.rda')
BikeCommute <- transform( BikeCommute, MonthNum = as.numeric(substr(as.character(Month), 1,1)) )

BikeCommute <- transform(BikeCommute, MonthStr = Month)
levels(BikeCommute$MonthStr) <- substr(levels(BikeCommute$Month),2,4)

BikeCommute <- transform( BikeCommute, DMY = lubridate::dmy(as.character(Date)) ) 
