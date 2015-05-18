Bootstrap <- do(1000) * mean( ~Time, data=resample(CommuteAtlanta)) 
dotPlot(~result, width = 0.1, data=Bootstrap)

