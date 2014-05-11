## R script to create plot1.png for Project 1 in
## Exploratory Data Analysis

## Read in data file from working directory
data <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", 
                   colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
## Limit data to 2007-02-01 and 2007-02-02
data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]

## Plot and write chart
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()