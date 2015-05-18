Boot.Rent <- do(1000) * mean( ~Rent, data=resample(ManhattanApartments)) 
head(Boot.Rent, 3)
favstats(~result, data=Boot.Rent)
cdata(0.95, result, data=Boot.Rent)

