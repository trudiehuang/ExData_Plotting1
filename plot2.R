#plot2

powered$second<-as.POSIXct(powered$datatime)
plot(powered$Global_active_power~powered$second,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.copy(png,"plot2.png")
dev.off()
