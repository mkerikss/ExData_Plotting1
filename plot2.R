## Reading data

file<-"household_power_consumption.txt"
dat<-read.table(file,header=TRUE,sep=";",na.strings="?")

## Only two days investigated
dat<-dat[which(dat$Date=="1/2/2007" | dat$Date=="2/2/2007"),]


## Variable for dates (Date-format)

datetimeStr<-paste(dat$Date,dat$Time,sep=" ")
datetime<-strptime(datetimeStr, "%d/%m/%Y %H:%M:%S")

## Plot

png("plot2.png",width=480,height=480,units="px")
plot(datetime,dat$Global_active_power,"l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()