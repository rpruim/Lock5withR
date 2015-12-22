files <- dir(pattern = "*.rda")
for( f in files) {
  load(f)
}

l <- c("Under 2500",  "2500 - 5000", "Over 5000")
AllCountries <- transform(AllCountries, 
                          kwhPerCap = ordered(l[Developed],levels=l))
rm(l)
# Note this was names CO2 in Lock5Data, but that name conflicts with a data set in datasets.
# used to do this, but now we're saving the rda with the corrected data
# file left here as a reminder that CO2 was the original name of the data set in Lock5Data
# load("AtmosphericCO2.rda")
# names(AtmosphericCO2) <- c("Year", "CO2")  # correcting C02
# NULL

BikeCommute <- transform( BikeCommute, MonthNum = as.numeric(substr(as.character(Month), 1,1)) )

BikeCommute <- transform(BikeCommute, MonthStr = Month)
levels(BikeCommute$MonthStr) <- substr(levels(BikeCommute$Month),2,4)

BikeCommute <- transform( BikeCommute, DMY = lubridate::dmy(as.character(Date)) ) 
BodyTemp50 <- transform(BodyTemp50, Sex = ifelse(Gender==0, "Female", "Male") )
# BodyTemp50 <- subset(BodyTemp50, select = -Gender)

levels(CaffeineTaps$Group)[2] <- "No Caffeine"
CaffeineTaps$Caffeine <- "No"
CaffeineTaps$Caffeine[CaffeineTaps$Group == "Caffeine"]  <- "Yes"

EmployedACS <- transform(EmployedACS, sex = factor(ifelse(Sex==0, "Female", "Male")) )
EmployedACS <- transform(EmployedACS, married = factor(ifelse(Married ==0, "Not Married", "Married")) )
EmployedACS <- transform(EmployedACS, 
                         UScitizen= factor(ifelse(USCitizen==0, "Noncitizen", "Citizen") ) )
EmployedACS <- transform(EmployedACS, 
                         healthInsurance= factor(ifelse(HealthInsurance==0, "Uninsured", "Insured") ) )
EmployedACS <- transform(EmployedACS, 
                         language= factor(ifelse(Language==0, "Other", "English") ) )

# Flight179 <- transform( Flight179 , DateStr = as.character(Date) )

Flight179 <- transform(Flight179 , MDY = lubridate::mdy(as.character(Date)) )
GPAGender <- transform(GPAGender, Sex = ifelse(GenderCode==0, "Female", "Male") )
# GPAGender <- subset(GPAGender, select = - GenderCode)
ICUAdmissions <- transform(ICUAdmissions, status = factor(ifelse(Status==0, "Lived", "Died") ) )
ICUAdmissions <- transform(ICUAdmissions, sex = factor( ifelse(Sex==0, "Male", "Female") ) )
races <- c("White","Black","Other")
ICUAdmissions <- transform(ICUAdmissions, race = factor(races[Race]))
rm(races)
ICUAdmissions <- transform(ICUAdmissions, service = factor(ifelse(Service==0, "Medical", "Surgical") ))
ICUAdmissions <- transform(ICUAdmissions, cancer = factor(ifelse(Cancer==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, renal = factor(ifelse(Renal==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, infection = factor(ifelse(Infection==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, cpr = factor(ifelse(CPR ==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, previous = factor(ifelse(Previous ==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, type = factor(ifelse(Fracture ==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, type = factor(ifelse(Type ==0, "Elective", "Emergency") ))
ICUAdmissions <- transform(ICUAdmissions, pO2low = factor(ifelse(PO2==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, pO2 = factor(ifelse(PO2==0, "Hi", "Low"), levels=c("Low","Hi") ))
ICUAdmissions <- transform(ICUAdmissions, pHlow = factor(ifelse(PH ==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, pH = factor(ifelse(PH ==0, "Hi", "Low"), levels=c("Low","Hi") ))
ICUAdmissions <- transform(ICUAdmissions, pCO2hi = factor(ifelse(PCO2 ==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, pCO2 = factor(ifelse(PCO2 ==0, "Low", "Hi"), levels=c("Low","Hi") ))
ICUAdmissions <- transform(ICUAdmissions, bicarbonateLow = factor(ifelse(Bicarbonate ==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, bicarbonate = factor(ifelse(Bicarbonate ==0, "Hi", "Low"), levels=c("Low","Hi") ))
ICUAdmissions <- transform(ICUAdmissions, creatinineHi = factor(ifelse(Creatinine==0, "No", "Yes") ))
ICUAdmissions <- transform(ICUAdmissions, creatinine = factor(ifelse(Creatinine==0, "Low", "Hi"), levels=c("Low","Hi") ))
con <- c("Conscious", "Deep Stupor", "Coma")
ICUAdmissions <- transform(ICUAdmissions, consciousness = factor(con[Consciousness]))
rm(con)


MiamiHeat <- transform(MiamiHeat , MDY = lubridate::mdy(as.character(Date)) )
MindsetMatters <- transform(MindsetMatters, Condition = factor(ifelse(Cond ==0, "Uninformed", "Informed") ))

NFLScores2011 <- 
	transform( NFLScores2011, Date = as.character(Date))
NFLScores2011 <- 
	transform( NFLScores2011, 
      Year = ifelse( substr(Date, nchar(Date)-2,nchar(Date)) == "Jan", 2012, 2011))
NFLScores2011 <- 
	transform( NFLScores2011, 
      DateStr = as.character(paste(Year,"-",Date, sep="")))
NFLScores2011 <- 
	transform( NFLScores2011, YDM = lubridate::ydm(as.character(DateStr)) )
NFLScores2011 <- 
	transform( NFLScores2011, 
      Day = factor(as.character(Day), levels=c("Thu", "Sat", "Sun", "Mon")) )
v <- c("Regular", "Occasional", "No")
NutritionStudy <- transform(NutritionStudy, 
    VitaminUse = factor( v[Vitamin], levels=v))
rm(v)
s <- c("Never", "Former", "Current")
NutritionStudy <- transform(NutritionStudy, 
    EverSmoke = factor( s[PriorSmoke], levels=s))
rm(s)
NutritionStudy <- transform(NutritionStudy, Sex=Gender)
# NutritionStudy <- subset(NutritionStudy, select = -Gender)

a <- c("No", "Yes")
RestaurantTips <- transform(RestaurantTips, 
                            CreditCard = factor( a[Credit], levels=a))
rm(a)
d <- c("Mon", "Tue", "Wed", "Thu", "Fri")   # desired order
dd <- c("Fri", "Mon", "Tue", "Thu", "Wed")  # order in original data

RestaurantTips <- transform(RestaurantTips, 
                            Day = factor( dd[Day], levels=d))
rm(d)
rm(dd)

RetailSales <- subset( RetailSales, ! is.na(Sales) )  # removing empty rows (bad copy from Excel?)
RetailSales <- transform(RetailSales, 
     Month = factor(Month, 
                    levels = c("Jan", "Feb", "Mar", "Apr", "May", "June", 
                               "July", "Aug", "Sep", "Oct", "Nov", "Dec"))
)    # Get Months in Order
RetailSales <- transform(RetailSales, 
    Date = lubridate::mdy( paste(Month, "-", Year, sep=""), truncated=1) )
SalaryGender <- transform(SalaryGender, 
    Sex = factor(ifelse(Gender==0, "Female", "Male"))
)

SalaryGender <- transform(SalaryGender, 
    phD = factor(ifelse(PhD==0, "No", "Yes"))
)

l <- c("Under 2500",  "2500 - 5000", "Over 5000")
SampCountries <- transform(SampCountries, 
                          kwhPerCap = ordered(l[Developed],levels=l))
rm(l)


SandP500 <- transform(SandP500, MDY = lubridate::mdy(as.character(Date)))
                      

SleepStudy <- transform(SleepStudy,
    Sex = factor(ifelse(Gender==0, "Female", "Male")) )

SleepStudy <- transform(SleepStudy,
    allNighter = factor(ifelse(AllNighter==0, "No", "Yes")) )

SleepStudy <- transform(SleepStudy,
    earlyClass = factor(ifelse(EarlyClass == 0, "No", "Yes")) )


SpeedDating <- transform(SpeedDating,
    DecisionMale = factor(ifelse(DecisionM == 0, "No", "Yes")))
SpeedDating <- transform(SpeedDating,
    DecisionFemale = factor(ifelse(DecisionF == 0, "No", "Yes")))

StudentSurvey <- transform(StudentSurvey,
    Sex = factor(ifelse(Gender=="M", "Male", "Female")))

name <- c(O="Obama", M="McCain")
USStates <- transform(USStates, Pres2008 = name[as.character(ObamaMcCain)])
# USStates <- subset(USStates, select = -ObamaMcCain)
rm(name)

WaterTaste <- transform(WaterTaste,
                           Sex = factor(ifelse(Gender=="M", "Male", "Female")))

Wetsuits <- transform(Wetsuits,
                        Sex = factor(ifelse(Gender=="M", "Male", "Female")))

devtools::use_data( 
  overwrite = TRUE,
  AllCountries,
  AtmosphericCO2,
  BikeCommute,
  BodyTemp50,
  CaffeineTaps,
  EmployedACS,
  Flight179,
  GPAGender,
  ICUAdmissions,
  MiamiHeat,
  MindsetMatters,
  NFLScores2011,
  NutritionStudy,
  RestaurantTips,
  RetailSales,
  SalaryGender,
  SampCountries,
  SandP500,
  SleepStudy,
  SpeedDating,
  StudentSurvey,
  USStates,
  WaterTaste,
  Wetsuits
)
