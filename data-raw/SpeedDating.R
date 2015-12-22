load('SpeedDating.rda')

SpeedDating <- transform(SpeedDating,
    DecisionMale = factor(ifelse(DecisionM == 0, "No", "Yes")))
SpeedDating <- transform(SpeedDating,
    DecisionFemale = factor(ifelse(DecisionF == 0, "No", "Yes")))
