###############################################################
## Exploratory Data Analysis - Project 1 / PLOT 1
## mpmartins1970
## February, 2016
###############################################################

## Reading the data 
source("gettingData.R")

## Open Graph Device
png(filename = "./figure/plot1.png", 
    width = 480, height = 480, units = "px"
)

## Create plot1
hist(febData$Global_active_power,
     col = "red", 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency"
)

## Close Graph Device
dev.off() 