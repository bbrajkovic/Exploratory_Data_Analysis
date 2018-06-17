## Master script ##

source("data_loading_script.R")

#Script 1
hist(data$Global_active_power, main="Global Active Power", ylab="Frequency", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()

#Script 2
plot(data$Global_active_power~data$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()

#Script 3
plot(data$Sub_metering_1~data$dateTime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
lines(data$Sub_metering_2~data$dateTime,col='Red')
lines(data$Sub_metering_3~data$dateTime,col='Blue')
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()

#Script 4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
plot(data$Global_active_power~data$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
plot(data$Voltage~data$dateTime, type="l", ylab="Voltage (volt)", xlab="")
plot(data$Sub_metering_1~data$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
lines(data$Sub_metering_2~data$dateTime,col='Red')
lines(data$Sub_metering_3~data$dateTime,col='Blue')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(data$Global_reactive_power~data$dateTime, type="l", ylab="Global Rective Power (kilowatts)",xlab="")
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()