results <- do(10000) * rflip(10)
table(results$heads)

