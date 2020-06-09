# Week 1 of Exploratory Data Analysis R Program Course

setwd("R:\\Earthquake\\Hazard\\Users\\MTorpey\\Coursera_DataScienceCertification\\ExploratoryDataAnalysisWithR\\Week1\\ExData_Plotting1")

data<-read.delim(file="..\\household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
datasub<-subset(data,Date %in% c("1/2/2007","2/2/2007"))

png("plot1.png",width=480,height=480)
hist(as.numeric(datasub$Global_active_power),col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()