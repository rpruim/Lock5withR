head(ExerciseHours)
favstats(~Exercise|Gender, data=ExerciseHours)
stat <- diff(mean(Exercise~Gender, data=ExerciseHours)); stat

