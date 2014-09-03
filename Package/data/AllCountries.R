load("AllCountries.rda")

l <- c("Under 2500",  "2500 - 5000", "Over 5000")
AllCountries <- transform(AllCountries, 
                          kwhPerCap = ordered(l[Developed],levels=l))
rm(l)
