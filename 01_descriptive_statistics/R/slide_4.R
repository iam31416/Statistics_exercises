#The student's grades are: 2.6; 3.7; 5.1 (the first three continuous assessment tests, each with weight 1), 4.9 (practices, weight 2), 
#and 6.4 (final exam, weight 3).
#Calculate the weighted average

data <- c(2.6, 3.7, 5.1, 4.9, 6.4)
pond <- c(1,1,1,2,3)
weighted.mean(data,pond)

