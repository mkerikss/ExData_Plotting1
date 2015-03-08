## Reading data

file<-"household_power_consumption.txt"
dat<-read.table(file,header=TRUE,sep=";",na.strings="?")

## Only two days investigated
dat<-dat[which(dat$Date=="1/2/2007" | dat$Date=="2/2/2007"),]


## Variable for dates (Date-format)

datetimeStr<-paste(dat$Date,dat$Time,sep=" ")
datetime<-strptime(datetimeStr, "%d/%m/%Y %H:%M:%S")

## Plot
png("plot3.png",width=480,height=480,units="px",bg="transparent")
plot(datetime,dat$Sub_metering_1,"l",ylab="Energy sub metering",xlab="")
points(datetime,dat$Sub_metering_2,"l",col="red")
points(datetime,dat$Sub_metering_3,"l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty="solid",col=c("black","red","blue"))
dev.off()