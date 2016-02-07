###############################################################
## Exploratory Data Analysis - Project 1 / Gettind Data
## mpmartins1970
## February, 2016
###############################################################

## Create a class to convert date from file
setClass('dmy')
setAs("character","dmy", function(from)
        as.Date(from, format = "%d/%m/%Y"))

## Load full dataset
data <- read.csv(
                file = "./dataset/household_power_consumption.txt",
                header = TRUE,
                sep = ";", dec = ".",
                na.strings = "?",
                colClasses = c("dmy", "character", rep("numeric",7))
        )

## Create Dataframe with 2 days of analysis
febData <- data[data$Date >= as.Date("2007-02-01") &
                data$Date <= as.Date("2007-02-02"),]

## Remove full dataset from memory
rm(data)

## Create column Datetime merging Date, Time
febData <- within(febData, Datetime <- as.POSIXct(paste(Date, Time)
                                                  ,format = "%Y-%m-%d %H:%M:%S"))

## Remove columns Date and Time
febData <- febData[,-(1:2)]
