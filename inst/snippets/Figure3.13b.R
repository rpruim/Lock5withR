results <- CIsim(200, samples=100, rdist=rbinom, args=list(size=1, prob=0.275), 
                 method=binom.test, method.args=list(success=1), verbose=FALSE, estimand=0.275)
require(Hmisc)
xYplot(Cbind(estimate,lower,upper) ~ sample,
  data=results,
  par.settings=col.mosaic(), 
  groups=cover)

