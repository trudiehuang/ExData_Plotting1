#dealing with the data and pick the data in the 2007-02-01~2007-02-02

power<-read.table("household_power_consumption.txt",colClasses = c("character","character",rep("numeric",7)), header = TRUE,sep = ";",na.strings = "?")
power$datatime<- strptime(paste(power$Date,power$Time),"%d/%m/%Y %H:%M:%S")
power$Date<-as.Date(power$datatime)
a<-which(power$Date==as.Date("2007-02-01")|power$Date==as.Date("2007-02-02"))
powered<- power[a,]
powered$datatime<- as.POSIXct(powered$datatime)