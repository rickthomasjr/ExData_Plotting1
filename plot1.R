source('loadpower.R')
plot1 <- function(){
   power_data <- loadpower()
   png(filename = "./plot1.png", width=480, height=480, units="px")
   hist(power_data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
   dev.off()
}