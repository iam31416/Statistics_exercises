
x <- c(0, 0, 2, 2, 2, 2, 3, 3, 4, 4, 7, 7)

# 1. Calculate the median (Me)
Me <- median(x)
N <- length(x)

# First moment about the median: m₁(Me) = mean( (x - Me)^1 )
m1_Me <- mean(x - Me)                        # equivalent to sum(x - Me)/N
cat("m₁(Me) =", m1_Me, "\n")                 

# Second moment about the median: m₂(Me) = mean( (x - Me)^2 )
m2_Me <- mean((x - Me)^2)                    # equivalent to sum((x - Me)^2)/N
cat("m₂(Me) =", m2_Me, "\n")                 

# Exact fraction form (recommended for exactness)
m2_Me_exact <- sum((x - Me)^2) / N


cat("m₂(Me) exact =", m2_Me_exact, "=", sum((x - Me)^2), "/", N, "\n")
# → 59/12

# Summary
cat("\nSummary:\n")
cat("N =", N, "\n")
cat("Median =", Me, "\n")
cat("m₁(Me) =", m1_Me, "\n")
cat("m₂(Me) =", m2_Me, "= 59/12\n")

