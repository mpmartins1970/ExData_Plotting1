###############################################################
## Exploratory Data Analysis - Project 1 / PLOT 4
## mpmartins1970
## February, 2016
###############################################################

## Reading the data 
source("gettingData.R")

## Open Graph Device
png(filename = "./figure/plot4.png", 
    width = 480, height = 480, units = "px"
)

## Create Multiple base plots
par(mfrow = c(2, 2))

## Create plot41
plot(febData$Datetime, febData$Global_active_power, 
     type = "l",
     ylab = "Global Active Power",
     xlab = ""
)

## Create plot42
plot(febData$Datetime, febData$Voltage, 
     type = "l",
     ylab = "Voltage",
     xlab = "datetime"
)

## Create plot43
plot(febData$Datetime, febData$Sub_metering_1, 
     type = "l",
     ylab = "Energy sub metering",
     xlab = ""
)
lines(febData$Datetime, febData$Sub_metering_2, col = "red")
lines(febData$Datetime, febData$Sub_metering_3,col = "blue")
legend("topright", lwd = 1, bty = "n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Create plot44 
plot(febData$Datetime, febData$Global_reactive_power, 
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime"
)

## Close Graph Device
dev.off() 