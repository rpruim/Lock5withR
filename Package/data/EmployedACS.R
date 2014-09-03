load("EmployedACS.rda")
EmployedACS <- transform(EmployedACS, sex = factor(ifelse(Sex==0, "Female", "Male")) )
EmployedACS <- transform(EmployedACS, married = factor(ifelse(Married ==0, "Not Married", "Married")) )
EmployedACS <- transform(EmployedACS, 
                         UScitizen= factor(ifelse(USCitizen==0, "Noncitizen", "Citizen") ) )
EmployedACS <- transform(EmployedACS, 
                         healthInsurance= factor(ifelse(HealthInsurance==0, "Uninsured", "Insured") ) )
EmployedACS <- transform(EmployedACS, 
                         language= factor(ifelse(Language==0, "Other", "English") ) )
