## LOADING DATA FROM "household_power_consumption.txt" FILE  AND FORMATTING DATASET AS PER PROJECT REQUIREMENTS ##

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

data$Date <- as.Date(data$Date, "%d/%m/%Y")                                     # Converting data$Date from 'character' to 'date'
data <- subset(data,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))  # Subsetting data that will be used for plotting
data <- data[complete.cases(data),]                                             # Cleaning dataset for incomplete observations
dateTime <- paste(data$Date, data$Time)                                         # Merging date and time into one variable
dateTime <- setNames(dateTime, "DateTime")
data <- data[ ,!(names(data) %in% c("Date","Time"))]
data <- cbind(dateTime, data)
data$dateTime <- as.POSIXct(dateTime)