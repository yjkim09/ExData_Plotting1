png(filename="plot2.png",height=480,width=480)
dfrm <- read.csv("household_power_consumption.txt",sep = ';',
                 stringsAsFactors = FALSE, na.strings = "?")
dfrm <- dfrm[complete.cases(dfrm),]
dfrm <- subset(dfrm,Date=="1/2/2007"|Date=="2/2/2007")
dfrm$DateTime <- paste(dfrm$Date,dfrm$Time)
dfrm$DateTime <- strptime(dfrm$DateTime, "%d/%m/%Y %H:%M:%S")
plot(dfrm$DateTime,dfrm$Global_active_power,type="l",xlab=NA,ylab = "Global Active Power (kilowatts)")
#dev.copy(png,file="plot2.png",height=480,width=480)
dev.off()