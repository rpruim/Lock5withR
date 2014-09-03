load('WaterTaste.rda')

WaterTaste <- transform(WaterTaste,
                           Sex = factor(ifelse(Gender=="M", "Male", "Female")))
