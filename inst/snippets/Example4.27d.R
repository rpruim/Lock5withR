prop( ~ (smile <= -0.76 | smile >= 0.76), data=Randomization.Smiles )
2 * prop( ~ smile >= 0.76, data=Randomization.Smiles )
dotPlot(~smile, width=.03, cex=.5, groups= (smile >=0.76), data=Randomization.Smiles)


