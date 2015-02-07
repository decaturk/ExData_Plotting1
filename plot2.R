##plot 2

## read data
#source("read_data.R") # uncomment line if not running plot1.R first


png("plot2.png", width=480, height=480)


plot(dfAll$Time, dfAll$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()