
load('CaffeineTaps.rda')
levels(CaffeineTaps$Group)[2] <- "No Caffeine"
CaffeineTaps$Caffeine <- "No"
CaffeineTaps$Caffeine[CaffeineTaps$Group == "Caffeine"]  <- "Yes"

