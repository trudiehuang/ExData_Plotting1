#plot4
png(filename = "plot4.png")
par(mfrow=c(2,2))
par("mar"=c(4,4,2,2))
plot(powered$Global_active_power~powered$second,xlab = "",ylab = "Global Active Power",type = "l")
plot(powered$Voltage~powered$second,ylab = "Vottage",xlab = "datetime",type = "l")
plot(powered$Sub_metering_1~powered$second,type="l",xlab = "",ylab="Energy sub metering")
lines(powered$Sub_metering_2~powered$second,type="l",col="red")
lines(powered$Sub_metering_3~powered$second,type="l",col="blue")
legend("topright",lty =1,cex=0.8,bty="n",col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(powered$Global_reactive_power~powered$second,ylab = "Global_Reactive_Power",xlab = "datetime",type = "l")

dev.off()