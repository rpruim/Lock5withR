load('Wetsuits.rda')

Wetsuits <- transform(Wetsuits,
                        Sex = factor(ifelse(Gender=="M", "Male", "Female")))
