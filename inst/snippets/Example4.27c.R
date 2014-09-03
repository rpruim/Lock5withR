prop(~ (smile <= -0.79 | smile >= 0.79), data = Randomization.Smiles)
2 * prop(~ smile >= 0.79, data = Randomization.Smiles )
dotPlot(~ smile, width = 0.03, cex = 0.5, groups = (smile >= 0.79), 
        xlab = "Diff", data = Randomization.Smiles)

