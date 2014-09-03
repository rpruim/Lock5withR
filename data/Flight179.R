load('Flight179.rda')

# Flight179 <- transform( Flight179 , DateStr = as.character(Date) )

if (require(lubridate)) 
  Flight179 <- transform(Flight179 , MDY = mdy(as.character(Date)) )
