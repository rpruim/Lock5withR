Boot.Temp <- do (5000) * mean(~ BodyTemp, data=resample(BodyTemp50))
head(Boot.Temp,3)
mean(~ result, data=Boot.Temp)
cdata(0.95, result, data=Boot.Temp)
histogram(~result, width=.01, v=c(98.26, 98.6), 
          groups=(98.05 <=result & result <= 98.46), data=Boot.Temp)

