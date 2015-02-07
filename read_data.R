## read data 

# Data from  UC Irvine Machine Learning Repository

# file dl'd from 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# reference info at
# https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption


dfAll <- read.table("household_power_consumption.txt",
    header=TRUE,
    sep=";",
    stringsAsFactors =FALSE,
    na="?")
dfAll$Time <- strptime(paste(dfAll$Date, dfAll$Time), "%d/%m/%Y %H:%M:%S")
dfAll$Date <- as.Date(dfAll$Date, "%d/%m/%Y")
dfAll <- subset(dfAll, dfAll$Date=="2007-02-01" | dfAll$Date=="2007-02-02")