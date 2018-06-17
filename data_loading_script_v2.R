## LOADING DATA FROM "household_power_consumption.txt" FILE  AND FORMATTING DATASET AS PER PROJECT REQUIREMENTS ##

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
data$Date<-paste(data$Date,data$Time)                                                           # Merging date and time into one variable
data<-data[-2]                                                                                  # Removing redundant variables
data$Date<-strptime(data$Date, format = "%d/%m/%Y %H:%M:%S")                                    # Converting data$Date from 'character' into 'POSIXlt'
data <- subset(data,data$Date >= as.POSIXlt("2007-2-1") & data$Date <= as.POSIXlt("2007-2-2"))  # Subsetting data that will be used for plotting