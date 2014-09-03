# Now we'll do it 1000 times
sampledist <- do(1000) * mean(~FTGradEnrollment, data=sample(StatisticsPhD, 10))
head(sampledist, 3)
dotPlot(~result, width=.005, data=sampledist)


