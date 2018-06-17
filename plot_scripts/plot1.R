## FIRST CHART CODE ##
source("data_loading_script.R")
hist(data$Global_active_power, main="Global Active Power", ylab="Frequency", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()