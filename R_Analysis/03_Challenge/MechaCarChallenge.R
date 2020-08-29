# 1. MPG Regression 
mpg_table <- read.csv(file='Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # read and store the data
summary(lm(mpg ~ `vehicle length` + `vehicle weight`+ `spoiler angle` + 
     `ground clearance` + AWD, data=mpg_table)) #generate multiple linear regression model summary


# 2. Suspension Coil Summary
coil_table <- read.csv(file='Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # read and store the data
coil_summary <- data.frame('Manufacturing_Lot'=c('Lot1 + Lot2 + Lot3'), 'Mean_PSI'=c(mean(coil_table$PSI)), 'Median_PSI'=c(median(coil_table$PSI)), 'Variance_PSI'=c(var(coil_table$PSI)), 'Std_dev_PSI'=c(sqrt(var(coil_table$PSI)))) #create a global summary static table
coil_summary_by_lot <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), Std_dev_PSI=sqrt(var(PSI))) #create a summary static table for each lot


# 3. Suspension Coil T-Test
var(coil_table$PSI)
