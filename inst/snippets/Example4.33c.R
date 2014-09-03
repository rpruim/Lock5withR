Randomization.Temp <- do(10000) * ( mean( ~BodyTemp, data=resample(BodyTemp50) ) + 0.34 ) 
head(Randomization.Temp, 3)
mean( ~ result, data=Randomization.Temp )
cdata(0.95, result, data=Randomization.Temp )


