## R script to create plot3.png for Project 1 in
## Exploratory Data Analysis

## Read in data file from working directory
data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", 
                   colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
## Limit data to 2007-02-01 and 2007-02-02
data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]

## Add new field DateTime
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

## Plot and write chart
png(filename = "plot2.png", width = 480, height = 480, units = "px")
png(filename = "plot3.png", width = 480, height = 480, units = "px")
cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
dev.off()