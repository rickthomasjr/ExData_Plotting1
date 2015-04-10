source('loadpower.R')
plot4 <- function(){
   if (!exists("power_data")) {
      power_data <- loadpower()
   }
   png(filename = "./plot4.png", width=480, height=480, units="px")
   par(mfrow=c(2,2), cex=0.8)
   plot(power_data$Time, power_data$Global_active_power, type="l", ylab="Global Active Power", xlab="")
   plot(power_data$Time, power_data$Voltage, type="l", xlab="datetime", ylab="Voltage")
   plot(power_data$Time, power_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
   lines(power_data$Time, power_data$Sub_metering_2, type="l", col="red")
   lines(power_data$Time, power_data$Sub_metering_3, type="l", col="blue")
   legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col = c("black", "red", "blue"), bty="n")
   plot(power_data$Time, power_data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
   dev.off()
   par(mfrow=c(1,1))
}
