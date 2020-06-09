# Week 1 of Exploratory Data Analysis R Program Course

setwd("R:\\Earthquake\\Hazard\\Users\\MTorpey\\Coursera_DataScienceCertification\\ExploratoryDataAnalysisWithR\\Week1\\ExData_Plotting1")

data<-read.delim(file="..\\household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
datasub<-subset(data,Date %in% c("1/2/2007","2/2/2007"))

datasub_date<-as.Date(datasub$Date,format="%d/%m/%Y")
datasub$timeseries<-as.POSIXct(paste(datasub_date,datasub$Time,separator=" "))

png("plot2.png",width=480,height=480)
plot(datasub$Global_active_power~datasub$timeseries,type="l",xlab=NA,ylab="Global Active Power (kilowatts)")
dev.off()
