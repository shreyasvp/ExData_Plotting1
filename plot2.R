#Exploratory Data Analysis Course Project 1- Plot 2

#Obtaining the data set

dat<-read.table("../household_power_consumption.txt",header=TRUE,sep=";",
                na.strings="?",colClasses=c("character","character",
                                            "numeric","numeric","numeric",
                                            "numeric","numeric","numeric",
                                            "numeric"))

#Subsetting the data


dat<-subset(dat,dat$Date=="1/2/2007"|dat$Date=="2/2/2007")
#conversion of date and time formats
dat$Date<-as.Date(dat$Date,format="%d/%m/%Y")
dt<- paste(dat$Date,dat$Time)
dat$dt<-as.POSIXct(dt)

#Plotting the data
plot(dat$Global_active_power~dat$dt,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png",height=480,width=480)
dev.off()

