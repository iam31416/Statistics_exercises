# Consider the lists of numerical values:
# List A = {12, 10, 9, 9, 10}
# List B = {5, 10, 16, 15, 4}
# Calculate the standard deviation and interpret the results.


dataA <- c(12, 10, 9, 9, 10)
dataB <- c(5, 10, 16, 15, 4)
nA <- length(dataA)
nB <- length(dataB)

# Note: The var() function in R calculates the sample variance (divided by n-1),
#       and sd() calculates the sample standard deviation.
# Here we adjust to obtain the population standard deviation (divided by n)

sd_A <- sqrt(var(dataA) * (nA - 1) / nA)
sd_B <- sqrt(var(dataB) * (nB - 1) / nB)
