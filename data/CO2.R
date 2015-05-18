# Note this was names CO2 in Lock5Data, but that name conflicts with a data set in datasets.
load("AtmosphericCO2.rda")
# used to do this, but now we're saving the rda with the corrected data
# names(AtmosphericCO2) <- c("Year", "CO2")  # correcting C02