body.model <- lm(Bodyfat ~ Weight + Abdomen, data = BodyFat)
summary(body.model)
histogram(~ resid(body.model), breaks = 10)
xyplot(resid(body.model) ~ fitted(body.model), type=c("p", "r"), cex=0.5)

