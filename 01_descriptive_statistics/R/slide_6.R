# Enter the data
x <- c(2, 5, 3, 4, 7, 0, 11, 2, 3, 8)
sort(x)

# 1. Quartiles (using the most common type = 7 in R)
quartiles <- quantile(x, probs = c(0.25, 0.5, 0.75), type = 7)
cat("Q1 (25th percentile) =", quartiles[1], "\n")
cat("Q2 (median / 50th)   =", quartiles[2], "\n")
cat("Q3 (75th percentile) =", quartiles[3], "\n\n")

# 2. Percentiles P37 and P68
percentiles <- quantile(x, probs = c(0.37, 0.68), type = 7)
cat("P37 (37th percentile) =", percentiles[1], "\n")
cat("P68 (68th percentile) =", percentiles[2], "\n")

# Summary:
cat("\nSummary with more detail:\n")
quantile(x, probs = seq(0, 1, 0.25), type = 7)