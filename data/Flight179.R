load('Flight179.rda')

# Flight179 <- transform( Flight179 , DateStr = as.character(Date) )

Flight179 <- transform(Flight179 , MDY = lubridate::mdy(as.character(Date)) )
