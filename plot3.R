#plot3
powered$second<-as.POSIXct(powered$datatime)
png(filename = "plot3.png")
plot(powered$Sub_metering_1~powered$second,type="l",xlab="",ylab="Energy sub metering")
lines(powered$Sub_metering_2~powered$second,type="l",xlab="",col="red")
lines(powered$Sub_metering_3~powered$second,type="l",xlab="",col="blue")
#legend(x=100,y=100,pch = "_",col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
legend("topright",xpd=TRUE,lty = 1,col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


dev.off()
