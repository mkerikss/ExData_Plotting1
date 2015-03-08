## Reading data

file<-"household_power_consumption.txt"
dat<-read.table(file,header=TRUE,sep=";",na.strings="?")

## Only two days investigated
dat<-dat[which(dat$Date=="1/2/2007" | dat$Date=="2/2/2007"),]


## Histogram plot

png("plot1.png",width=480,height=480,units="px",bg = "transparent")
hist(dat$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
