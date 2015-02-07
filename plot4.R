## plot 4

## read data
#source("read_data.R") # uncomment line if not running plot1.R first

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

##top left
plot(dfAll$Time, dfAll$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

##top right
plot(dfAll$Time, dfAll$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

##bottom left
plot(dfAll$Time, 
     dfAll$Sub_metering_1, type="l", 
     col="black",
     xlab="", 
     ylab="Energy sub metering")
lines(dfAll$Time, dfAll$Sub_metering_2 , col='red')
lines(dfAll$Time, dfAll$Sub_metering_2 , col='red')
lines(dfAll$Time, dfAll$Sub_metering_3 , col='blue')
legend("topright",
       col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty="n", 
       lty=1)

##bottom right
plot(dfAll$Time, dfAll$Global_reactive_power, type="h",
     xlab="datetime", ylab="Global_reactive_power")

dev.off()
