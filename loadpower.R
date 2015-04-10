library(dplyr)
loadpower <- function() {
   power <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = TRUE, na.string = "?")
   power <- tbl_df(power)
   power %>%
      mutate(Date = as.Date(Date, format = '%d/%m/%Y')) %>%
      filter(Date >= "2007-02-01" & Date <= "2007-02-02") %>%
      mutate(Time = as.POSIXct(paste(Date, Time, sep=" "), format="%Y-%m-%d %H:%M:%S"))
}