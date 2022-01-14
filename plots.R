################################################# Plot 1



plot1_data <- read.table("specdata/household_power_consumption_data/household_power_consumption.txt",sep=";",header=T)

plot1_data$Date <- as.Date(plot1_data$Date, format="%d/%m/%Y")

plot1_data <- plot1_data[plot1_data$Date=="2007-02-02"|plot1_data$Date=="2007-02-01",]

plot1_data$Time <- paste(plot1_data$Date,plot1_data$Time,sep=" ")

plot1_data$Time <- strptime(plot1_data$Time, format="%Y-%m-%d %H:%M:%S")

plot1_data$Global_active_power<-as.numeric(plot1_data$Global_active_power)

hist(plot1_data$Global_active_power,main= "Global Active Power",
     xlab="Global Active Power (kilowatts)",ylab="Frequency",
     col="red",bg = "white")

dev.copy(png,'plot1.png')
dev.off()



################################################# Plot 2



plot2_data <- read.table("specdata/household_power_consumption_data/household_power_consumption.txt",sep=";",header=T)

plot2_data$Date <- as.Date(plot2_data $Date, format="%d/%m/%Y")

plot2_data  <- plot2_data[plot2_data$Date=="2007-02-02"|plot2_data$Date=="2007-02-01",]

plot2_data$Time <- paste(plot2_data$Date,plot2_data$Time,sep=" ")

plot2_data$Time <- strptime(plot2_data$Time, format="%Y-%m-%d %H:%M:%S")

plot2_data$Global_active_power<-as.numeric(plot2_data$Global_active_power)

plot(plot2_data$Time,plot2_data$Global_active_power,ylab="Global Active Power (kilowatts)",
     xlab="", type="l",bg = "white")

dev.copy(png,'plot2.png')
dev.off()



################################################# Plot 3



plot3_data <-read.table("specdata/household_power_consumption_data/household_power_consumption.txt",sep=";",header=T)

plot3_data$Date <-as.Date(plot3_data$Date, format="%d/%m/%Y")

plot3_data <-plot3_data[plot3_data$Date=="2007-02-02"|plot3_data$Date=="2007-02-01",]

plot3_data $Time <-paste(plot3_data $Date,plot3_data$Time,sep=" ")

plot3_data$Time <-strptime(plot3_data$Time, format="%Y-%m-%d %H:%M:%S")

plot3_data$Sub_metering_1 <-as.numeric(plot3_data$Sub_metering_1)
plot3_data$Sub_metering_2 <-as.numeric(plot3_data$Sub_metering_2)
plot3_data$Sub_metering_3 <-as.numeric(plot3_data$Sub_metering_3)

plot(plot3_data$Time,plot3_data$Sub_metering_1,col="black", 
     type ="l",xlab=" ",ylab="Energy sub metering")

lines(plot3_data$Time,plot3_data$Sub_metering_2,type="l",col="red")
lines(plot3_data$Time,plot3_data$Sub_metering_3,type="l",col="blue")
legend("topright",  col=c("black","red","blue"), lty= 1,
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,'plot3.png')
dev.off() 



################################################# Plot 4



plot4_data <- read.table("specdata/household_power_consumption_data/household_power_consumption.txt",sep=";",header=T)

plot4_data$Date <- as.Date(plot4_data$Date, format="%d/%m/%Y")

plot4_data <- plot4_data[plot4_data$Date=="2007-02-02"|plot4_data$Date=="2007-02-01",]

plot4_data$Time <- paste(plot4_data$Date,plot4_data$Time,sep=" ")

plot4_data$Time <- strptime(plot4_data$Time, format="%Y-%m-%d %H:%M:%S")

plot4_data$Global_active_power<-as.numeric(plot4_data$Global_active_power)

plot4_data$Global_reactive_power<-as.numeric(plot4_data$Global_reactive_power)

par(mfrow=c(2,2))

with(plot4_data,{
  
  plot(Time, plot4_data$Global_active_power,
       type="l", xlab=" ", ylab="Global Active Power (kilowatts)")
  
  plot(xlab="datetime", Time, type="l", Voltage)
  
  plot(Time, Sub_metering_1, type="l", 
       ylab="Energy sub metering", xlab=" ", col="black")
  
  lines(Time, Sub_metering_2, type="l", col="red")
  lines(Time, Sub_metering_3, type="l", col="blue")
  
  legend("topright",col = c("black","red","blue"),lty = 1,bty = "n", xjust= 1, 
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
   )
  
  plot(Time, Global_reactive_power, xlab="datetime", type="l")
})

dev.copy(png,"plot4.png",)
dev.off()
