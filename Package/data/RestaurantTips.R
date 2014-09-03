load("RestaurantTips.rda")
a <- c("No", "Yes")
RestaurantTips <- transform(RestaurantTips, 
                            CreditCard = factor( a[Credit], levels=a))
rm(a)
d <- c("Mon", "Tue", "Wed", "Thu", "Fri")   # desired order
dd <- c("Fri", "Mon", "Tue", "Thu", "Wed")  # order in original data

RestaurantTips <- transform(RestaurantTips, 
                            Day = factor( dd[Day], levels=d))
rm(d)
rm(dd)
