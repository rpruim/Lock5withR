
load('BikeCommute.rda')
BikeCommute <- transform( BikeCommute, MonthNum = as.numeric(substr(as.character(Month), 1,1)) )

BikeCommute <- transform(BikeCommute, MonthStr = Month)
levels(BikeCommute$MonthStr) <- substr(levels(BikeCommute$Month),2,4)

if (require(lubridate)) {
	BikeCommute <- transform( BikeCommute, DMY = dmy(as.character(Date)) ) 
} else {
	BikeCommute <- transform( BikeCommute, DMY = as.character(Date) ) 
}
