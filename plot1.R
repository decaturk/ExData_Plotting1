##plot 1

## read data
source("read_data.R")

png("plot1.png", width=480, height=480)

hist(dfAll$Global_active_power, 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", 
     col="Red")

dev.off() 