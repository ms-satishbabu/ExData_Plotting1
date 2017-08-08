source("plotData.R") #plotData.R is loaded on the github
############ Plot 1
png("plot1.png", width=480, height=480)
hist(f_data$Global_active_power, xlab = "Global Active Power (Kilowatts)", main = "Global Active Power", col = "red")
dev.off()
############ Plot 1

