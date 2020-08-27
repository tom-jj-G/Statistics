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