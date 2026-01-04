#Consider the lists of numbers List_{A}={25, 16, 11,11,17} and List_{B}={19, 16, 10, 4, 8, 1,8,16}. Calculate the median of both lists.

datosA <- c(25,16,11,11,17)
median(datosA)
quantile(datosA,0.5)
sort(datosA)

datosB <- c(19, 16, 10, 4, 8, 1,8,16)
sort(datosB)
quantile(datosB,0.5)

