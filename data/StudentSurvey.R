load('StudentSurvey.rda')

StudentSurvey <- transform(StudentSurvey,
    Sex = factor(ifelse(Gender=="M", "Male", "Female")))

