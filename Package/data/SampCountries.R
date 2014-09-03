load("SampCountries.rda")

l <- c("Under 2500",  "2500 - 5000", "Over 5000")
SampCountries <- transform(SampCountries, 
                          kwhPerCap = ordered(l[Developed],levels=l))
rm(l)
