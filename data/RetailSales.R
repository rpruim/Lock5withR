
load('RetailSales.rda')
RetailSales <- subset( RetailSales, ! is.na(Sales) )  # removing empty rows (bad copy from Excel?)
RetailSales <- transform(RetailSales, 
     Month = factor(Month, 
                    levels = c("Jan", "Feb", "Mar", "Apr", "May", "June", 
                               "July", "Aug", "Sep", "Oct", "Nov", "Dec"))
)    # Get Months in Order
RetailSales <- transform(RetailSales, 
    Date = lubridate::mdy( paste(Month, "-", Year, sep=""), truncated=1) )
