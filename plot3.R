## THIRD CHART CODE ##
source("data_loading_script.R")
plot(data$Sub_metering_1~data$dateTime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
lines(data$Sub_metering_2~data$dateTime,col='Red')
lines(data$Sub_metering_3~data$dateTime,col='Blue')
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()