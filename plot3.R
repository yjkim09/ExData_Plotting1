png(filename="plot3.png",height=480,width=480)
dfrm <- read.csv("household_power_consumption.txt",sep = ';',
                 stringsAsFactors = FALSE, na.strings = "?")
dfrm <- dfrm[complete.cases(dfrm),]
dfrm <- subset(dfrm,Date=="1/2/2007"|Date=="2/2/2007")
dfrm$DateTime <- paste(dfrm$Date,dfrm$Time)
dfrm$DateTime <- strptime(dfrm$DateTime, "%d/%m/%Y %H:%M:%S")
with(dfrm,plot(DateTime,Sub_metering_1,type="l",xlab=NA,ylab = "Energy sub metering"))
with(dfrm,lines(DateTime,Sub_metering_2,col="red"))     
with(dfrm,lines(DateTime,Sub_metering_3,col="blue"))     
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col = c("black","red","blue"))
#dev.copy(png,file="plot3.png",height=480,width=480)
dev.off()
       

