source("plotData.R") #plotData.R is loaded on the github
############ Plot 4
png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))
hist(f_data$Global_active_power, xlab = "Global Active Power (Kilowatts)", col = "red", main = "")
plot(f_data$DateTime, f_data$Voltage, ylab = "Voltage", xlab = "datetime", type = "l")
plot(f_data$DateTime, f_data$Sub_metering_1, ylab = "Energy Sub Metering", xlab = "", type = "l")
lines(f_data$DateTime, f_data$Sub_metering_2, col = "red")
lines(f_data$DateTime, f_data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
plot(f_data$DateTime, f_data$Global_reactive_power, ylab = "Global_reactive_power", xlab = "datetime", type = "l")
dev.off()
############ Plot 4
