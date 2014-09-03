chisq.sample <- do(1000) *  chisq.test(tally( ~ resample(toupper(letters[1:5]), 400) ) )$statistic
histogram(~X.squared, data = chisq.sample)


