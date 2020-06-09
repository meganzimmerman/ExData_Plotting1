# Week 1 of Exploratory Data Analysis R Program Course

setwd("R:\\Earthquake\\Hazard\\Users\\MTorpey\\Coursera_DataScienceCertification\\ExploratoryDataAnalysisWithR\\Week1\\ExData_Plotting1")

data<-read.delim(file="..\\household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
datasub<-subset(data,Date %in% c("1/2/2007","2/2/2007"))

datasub_date<-as.Date(datasub$Date,format="%d/%m/%Y")
datasub$timeseries<-as.POSIXct(paste(datasub_date,datasub$Time,separator=" "))

png("plot3.png",width=480,height=480)
par(mfrow=c(2,2))
plot(datasub$Global_active_power~datasub$timeseries,type="l",xlab=NA,ylab="Global Active Power")
plot(datasub$Voltage~datasub$timeseries,type="l",xlab="datetime",ylab="Voltage")

plot(datasub$Sub_metering_1~datasub$timeseries,type="l",xlab=NA,ylab="Energy sub metering")
lines(datasub$Sub_metering_2~datasub$timeseries,type="l",col="red")
lines(datasub$Sub_metering_3~datasub$timeseries,type="l",col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))

plot(datasub$Global_reactive_power~datasub$timeseries,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()
