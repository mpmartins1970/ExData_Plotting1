###############################################################
## Exploratory Data Analysis - Project 1 / PLOT 3 
## mpmartins1970
## February, 2016
###############################################################

## Reading the data 
source("gettingData.R")

## Open Graph Device
png(filename = "./figure/plot3.png", 
    width = 480, height = 480, units = "px"
)

## Create plot3  
plot(febData$Datetime, febData$Sub_metering_1, 
     type = "l",
     ylab = "Energy sub metering",
     xlab = ""
)

lines(febData$Datetime, febData$Sub_metering_2, col = "red")

lines(febData$Datetime, febData$Sub_metering_3,col = "blue")

legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Close Graph Device
dev.off() 