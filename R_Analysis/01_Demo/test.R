library(jsonlite)
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)
demo_table2 <- fromJSON(txt='demo.json')
demo_table[3,3]
demo_table$"Vehicle_Class"
demo_table$"Vehicle_Class"[2]
filter_table <- demo_table2[demo_table2$price > 10000,]
filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) #filter by price and drivetrain
sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
demo_table[sample(1:nrow(demo_table), 3),]
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) #add columns to original data frame
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer)) #create summary table
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n()) #create summary table with multiple columns
demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)
long_table <- demo_table3 %>% gather(key="Metric",value="Score",buying_price:popularity)
wide_table <- long_table %>% spread(key="Metric",value="Score")
all.equal(demo_table3, wide_table)
demo_table3 <- demo_table3[,order(colnames(demo_table3))]
wide_table <- wide_table[,order(colnames(wide_table))]
all.equal(demo_table3, wide_table)
