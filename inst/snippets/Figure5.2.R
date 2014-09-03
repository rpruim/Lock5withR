Bootstrap <- do(1000) * mean( ~Time, data=resample(CommuteAtlanta))
head(Bootstrap, 3)
histogram(~result, density=TRUE, data=Bootstrap)
densityplot(~result, data=Bootstrap)


