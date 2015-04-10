source('loadpower.R')
plot2 <- function(){
   if (!exists("power_data")) {
      power_data <- loadpower()
   }
   png(filename = "./plot2.png", width=480, height=480, units="px")
   plot(power_data$Time, power_data$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
   lines(power_data$Time, power_data$Global_active_power)
   dev.off()
}