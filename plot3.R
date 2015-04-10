source('loadpower.R')
plot3 <- function(){
   if (!exists("power_data")) {
      power_data <- loadpower()
   }
   png(filename = "./plot3.png", width=480, height=480, units="px")
   plot(power_data$Time, power_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
   lines(power_data$Time, power_data$Sub_metering_2, type="l", col="red")
   lines(power_data$Time, power_data$Sub_metering_3, type="l", col="blue")
   legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col = c("black", "red", "blue"))
   dev.off()
}
