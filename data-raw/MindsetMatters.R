load("MindsetMatters.rda")
MindsetMatters <- transform(MindsetMatters, Condition = factor(ifelse(Cond ==0, "Uninformed", "Informed") ))
