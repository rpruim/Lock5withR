load("BodyTemp50.rda")
BodyTemp50 <- transform(BodyTemp50, Sex = ifelse(Gender==0, "Female", "Male") )
# BodyTemp50 <- subset(BodyTemp50, select = -Gender)
