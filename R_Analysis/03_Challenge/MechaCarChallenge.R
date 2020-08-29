# 1. MPG Regression 
mpg_table <- read.csv(file='Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # read and store the data
summary(lm(mpg ~ `vehicle length` + `vehicle weight`+ `spoiler angle` + 
     `ground clearance` + AWD, data=mpg_table)) #generate multiple linear regression model summary

# 2. Suspension Coil Summary
coil_table <- read.csv(file='Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # read and store the data
coil_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), Std_dev_PSI=sqrt(var(PSI))) #create a summary static table for each lot
