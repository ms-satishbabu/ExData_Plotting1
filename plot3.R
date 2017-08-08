source("plotData.R") #plotData.R is loaded on the github
############ Plot 3
png("plot3.png", width=480, height=480)
plot(f_data$DateTime, f_data$Sub_metering_1, ylab = "Energy Sub Metering", xlab = "", type = "l")
lines(f_data$DateTime, f_data$Sub_metering_2, col = "red")
lines(f_data$DateTime, f_data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
############ Plot 3
