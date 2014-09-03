load('SalaryGender.rda')
SalaryGender <- transform(SalaryGender, 
    Sex = factor(ifelse(Gender==0, "Female", "Male"))
)

SalaryGender <- transform(SalaryGender, 
    phD = factor(ifelse(PhD==0, "No", "Yes"))
)
