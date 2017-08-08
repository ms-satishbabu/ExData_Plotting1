source("plotData.R") #plotData.R is loaded on the github
############ Plot 2
png("plot2.png", width=480, height=480)
plot(f_data$DateTime, f_data$Global_active_power, type = "l", ylab = "Global Active Power (Kilowatts)", xlab = "")
dev.off()
############ Plot 2
