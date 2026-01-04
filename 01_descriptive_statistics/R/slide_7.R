#Given the values $\{5, 2, 3, 3, 3, 5, 7\}$, find the mean deviation and the mean squared error with respect to the mean and the median.

# Data
data <- c(5, 2, 3, 3, 3, 5, 7)

# Mean
mean_value <- mean(data)

# Median
median_value <- median(data)           # or quantile(data, 0.5)

# Mean Absolute Deviation (MAD) from the mean
mad_mean <- sum(abs(data - mean_value)) / length(data)

# Mean Squared Error (MSE) from the mean
mse_mean <- sum((data - mean_value)^2) / length(data)

# Mean Absolute Deviation (MAD) from the median
mad_median <- sum(abs(data - median_value)) / length(data)

# Mean Squared Error (MSE) from the median
mse_median <- sum((data - median_value)^2) / length(data)

# Optional: print all results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mean Absolute Deviation (from mean):", mad_mean, "\n")
cat("Mean Squared Error (from mean):", mse_mean, "\n")
cat("Mean Absolute Deviation (from median):", mad_median, "\n")
cat("Mean Squared Error (from median):", mse_median, "\n")

