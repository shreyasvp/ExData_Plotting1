# Exploratory Data Analysis Course Project 1- Plot 3

# Obtaining the data set

dat<-read.table("../household_power_consumption.txt",header=TRUE,sep=";",
                na.strings="?",colClasses=c("character","character",
                                            "numeric","numeric","numeric",
                                            "numeric","numeric","numeric",
                                            "numeric"))

# Subsetting the data


dat<-subset(dat,dat$Date=="1/2/2007"|dat$Date=="2/2/2007")

# conversion of date and time formats
dat$Date<-as.Date(dat$Date,format="%d/%m/%Y")
datetime<- paste(dat$Date,dat$Time)
dat$Datetime<-as.POSIXct(datetime)

with(dat, {
    plot(Sub_metering_1~Datetime, type="l",
         ylab="Energy sub metering", xlab="")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Generating png file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()