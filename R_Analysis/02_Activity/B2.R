sardines <- read.csv(file="../Resources/sardines.csv")

alaska_sardine <- subset(sardines, location == 1)

# Calculate the population mean for Sardine Vertebrae in Alaska
alaska_mean <- mean(alaska_sardine$vertebrae)

# Calculate the population mean for Sardine Vertebrae in San Diego
San_Diego_sardine <- subset(sardines, location == 6)
San_Diego_mean <- mean(San_Diego_sardine$vertebrae)

# Calculate Independent (Two Sample) T-Test
t.test((alaska_sardine$vertebrae),(San_Diego_sardine$vertebrae))
