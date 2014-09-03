BootE <- do(3000) * diff(mean(Exercise~Gender, data=resample(ExerciseHours)))
head(BootE, 3)

