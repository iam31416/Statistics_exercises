# Given the table of absolute frequencies:
  
# $\begin{array}{|c||c|c|c|c|c|c|c|}
# \hline 
# Clases &  (-\infty,2] & (2,4] & (4,5] & (5,6] & (6,7] & (7,10] & (10,\infty) \\ 
# \hline 
# n_i & 5 & 7 & 5 & 6 & 4 & 7 & 6\\ 
# \hline 
# \end{array}$ 

# a) Draw the corresponding histogram.  
# b) Based on the histogram, what percentage of the population lies between 3 and 6?  
# c) What is the modal interval?


boundaries <- c(0, 2, 4, 5, 6, 7, 10, 13)   # By convention (see slides)

# Absolute frequencies
freq_abs <- c(5, 7, 5, 6, 4, 7, 6)

# Class width (difference between consecutive boundaries)
class_width <- diff(boundaries)   # Result: 2, 2, 1, 1, 1, 3, 3
print(class_width)

# Density (histogram height) = absolute frequency / class width
density <- freq_abs / class_width
print(density)   # 2.5, 3.5, 5.0, 6.0, 4.0, ≈2.333, 2.0

# --------------------------------------
# Correct histogram
# --------------------------------------
# Create an "empty" histogram just to get the structure
h <- hist(1, breaks = boundaries, plot = FALSE)

# Replace counts with the actual density values (real heights)
h$counts <- density

# Plot the histogram using density values (area of each rectangle = absolute frequency)
plot(h,
     freq = TRUE,                # TRUE → displays densities as heights
     col = "lightblue",
     border = "darkblue",
     main = "Histogram (density adjusted)",
     xlab = "Intervals",
     ylab = "Density",
     las = 1)

# Note: The area of each rectangle equals the absolute frequency
# (sum(density * class_width) should equal 40)

# --------------------------------------
# Percentage of the population between 3 and 6
# --------------------------------------
# From 3 to 4: partial contribution from the second interval (2,4] → remaining width = 1
partial_width <- 1
density_second <- density[2]                # 3.5
contrib_3to4 <- density_second * partial_width   # 3.5

# Full intervals: (4,5] and (5,6]
contrib_4to5 <- freq_abs[3]   # 5
contrib_5to6 <- freq_abs[4]   # 6

# Total number of individuals between 3 and 6
total_3to6 <- contrib_3to4 + contrib_4to5 + contrib_5to6   # 3.5 + 5 + 6 = 14.5

# Percentage
percentage <- (total_3to6 / sum(freq_abs)) * 100
cat("Percentage between 3 and 6:", round(percentage, 2), "%\n")   # 36.25 %

# Explanation: 14.5 / 40 = 0.3625 → 36.25%

# --------------------------------------
# Modal interval(s)
# --------------------------------------
modal_position <- which(density == max(density))
cat("Modal interval(s): (", boundaries[modal_position], ",", 
    boundaries[modal_position + 1], "]\n")

# Result: The interval with the highest density is (5,6] (density = 6)