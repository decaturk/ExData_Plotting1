##plot 3

## read data
#source("read_data.R") # uncomment line if not running plot1.R first

png("plot3.png", width=480, height=480)

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
       lty=1)


dev.off()