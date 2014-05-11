## R script to create plot1.png for Project 1 in
## Exploratory Data Analysis

## Read in data file from working directory
data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", 
                   colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
## Limit data to 2007-02-01 and 2007-02-02
data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]

## Add new field DateTime
tbl$DateTime <- strptime(paste(tbl$Date, tbl$Time), "%d/%m/%Y %H:%M:%S")

## Plot and write chart
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()