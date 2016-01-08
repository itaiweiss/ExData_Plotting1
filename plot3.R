# Plotting Assignment 1 for Exploratory Data Analysis
# Johns Hopkins University, Coursera

# email : itai.weiss@gmail.com

source("loaddata.R")


# plot on screen
# first black line
with(HousePowCons_200702,plot(Time,
							  Sub_metering_1,
							  type="l", 
							  ylab="Energy sub metering"))

# second red line							  
with(HousePowCons_200702,lines(Time,
							   Sub_metering_2,
							   type="l", 
							   col="red"))

# third blue line											   
with(HousePowCons_200702,lines(Time,
							   Sub_metering_3,
							   type="l", 
							   col="blue"))
							   
# legend 
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                  col=c("black","red","blue"),lty=c(1,1,1))

# save to png
dev.copy(png,'plot3.png',  width = 480, height = 480)
dev.off()

