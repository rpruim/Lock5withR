load('SleepStudy.rda')

SleepStudy <- transform(SleepStudy,
    Sex = factor(ifelse(Gender==0, "Female", "Male")) )

SleepStudy <- transform(SleepStudy,
    allNighter = factor(ifelse(AllNighter==0, "No", "Yes")) )

SleepStudy <- transform(SleepStudy,
    earlyClass = factor(ifelse(EarlyClass == 0, "No", "Yes")) )

