#set working directory
setwd("D:/xuan")

#load linrary data.table
install.packages("data.table")
library(data.table)



DT<-fread("./household_power_consumption.txt",na.strings="?")

#set data as d:m:y
DT$strData<-as.Date(DT$Date,"%d/%m/%y")

#Select data
DT.filter<-DT[DT$strDate=="2007-02-01" | DT$strDate=="2007-02-02",]
DT.filter$Global_active_power<-as.numeric(DT.filter$Global_active_power)
rm(DT)

#output histogram to PNG
png(filename="plot1.png", width=480, height=480)
hist(DT.filter$Global_active_power, 
     col="Red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()













