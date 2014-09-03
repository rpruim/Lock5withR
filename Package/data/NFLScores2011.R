
load("NFLScores2011.rda")
NFLScores2011 <- transform( NFLScores2011, Date = as.character(Date))
NFLScores2011 <- transform( NFLScores2011, 
      Year = ifelse( substr(Date, nchar(Date)-2,nchar(Date)) == "Jan", 2012, 2011))
NFLScores2011 <- transform( NFLScores2011, 
      DateStr = as.character(paste(Year,"-",Date, sep="")))
require(lubridate)
NFLScores2011 <- transform( NFLScores2011, YDM = ydm(as.character(DateStr)) )
NFLScores2011 <- transform( NFLScores2011, 
      Day = factor(as.character(Day), levels=c("Thu", "Sat", "Sun", "Mon")) )
