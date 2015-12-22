load("GPAGender.rda")
GPAGender <- transform(GPAGender, Sex = ifelse(GenderCode==0, "Female", "Male") )
# GPAGender <- subset(GPAGender, select = - GenderCode)
