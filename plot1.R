#Exploratory Data Analysis Course Project 1- Plot 1

#Obtaining the data set

dat<-read.table("../household_power_consumption.txt",header=TRUE,sep=";",
                     na.strings="?",colClasses=c("character","character",
                                                 "numeric","numeric","numeric",
                                                 "numeric","numeric","numeric",
                                                 "numeric"))

#Subsetting the data
#Conversion to date format not necessary since only 2 days of data are required

dat<-subset(dat,dat$Date=="1/2/2007"|dat$Date=="2/2/2007")

#PLotting data
hist(dat$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(Kilowatts)")

#Saving and Creating Png file

dev.copy(png,file="plot1.png",height=480,width=480)
dev.off()