# Five experimental samples of an insulating material are tested under different pressure levels. 
# For each sample, the applied pressure \(P\), measured in \(\mathrm{kg/cm}^2\), and the resulting compression magnitude \(C\), measured in millimeters (mm), are recorded.
#
# The observed data are given by the following pairs \((P, C)\):
#  $ (1,1),\ (2,1),\ (3,2),\ (4,2),\ (5,4)$

# Write a table with all the data and the Joint relative frequency table.

pressure <- c(1, 2, 3, 4, 5)
compression <- c(1, 1, 2, 2, 4)

df <- data.frame(pressure, compression)
df

################################################ Joint relative frequency table

table(pressure, compression)
prop.table(table(pressure, compression))
