source("load_data.r")
hist(data$global_active_power, col="red", main="Global Active Power", xlab="Global active power (kilowatts)")
dev.copy(png,'plot1.png',  width = 480, height = 480)
dev.off()
