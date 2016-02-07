###############################################################
## Exploratory Data Analysis - Project 1 / PLOT 2
## mpmartins1970
## February, 2016
###############################################################

## Reading the data 
source("gettingData.R")

## Open Graph Device
png(filename = "./figure/plot2.png", 
    width = 480, height = 480, units = "px"
)

## Create plot2
plot(febData$Datetime, febData$Global_active_power, 
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)

## Close Graph Device
dev.off() 