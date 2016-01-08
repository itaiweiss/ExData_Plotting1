# Plotting Assignment 1 for Exploratory Data Analysis
# Johns Hopkins University, Coursera

# email : itai.weiss@gmail.com

source("loaddata.R")


# plot on screen
# split to 2x2
par(mfrow=c(2,2))

#first plot
with(HousePowCons_200702,plot(Time,
							  Global_active_power,
							  type="l", 
							  ylab="Global Active Power"))

#second plot
with(HousePowCons_200702,plot(Time,
							  Voltage,type="l", 
							  ylab="Voltage",
							  xlab="datetime"))

# third plot
with(HousePowCons_200702,plot(Time,
							  Sub_metering_1,
							  type="l", 
							  ylab="Energy sub metering"))
with(HousePowCons_200702,lines(Time,
							   Sub_metering_2,
							   type="l", 
							   col="red"))
with(HousePowCons_200702,lines(Time,
							   Sub_metering_3,
							   type="l", 
							   col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
				  col=c("black","red","blue"),bty="n",lty=c(1,1,1))

# forth plot
with(HousePowCons_200702,plot(Time,Global_reactive_power,type="l", ylab="Global_reactive_power",xlab="datetime"))

# save to png
dev.copy(png,'plot4.png',  width = 480, height = 480)
dev.off()

