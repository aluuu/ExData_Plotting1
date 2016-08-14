source("load_data.r")
par(mfrow=c(2,2))
plot(data$time, data$global_active_power, type="l", ylab = "Global active Power")
plot(data$time, data$voltage, type="l", xlab = "datetime", ylab="Voltage")
plot(data$time, data$sub_metering_1,
     type="n", xlab="", ylab="Energy sub metering")
lines(data$time, data$sub_metering_1, type="l", col="black")
lines(data$time, data$sub_metering_2, type="l", col="red")
lines(data$time, data$sub_metering_3, type="l", col="blue")
legend("topright",  legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lty=c(1,1,1), col=c("black","red", "blue"))

plot(data$time, data$global_reactive_power, type="l", xlab = "datetime", ylab="Global_reactive_power")
dev.copy(png,'plot4.png',  width = 480, height = 480)
dev.off()
