# Plotting Assignment 1 for Exploratory Data Analysis
# Johns Hopkins University, Coursera

# email : itai.weiss@gmail.com

source("loaddata.R")


# plot on screen
with(HousePowCons_200702,plot(Time,
							  Global_active_power,type="l", 
							  ylab="Global Active Power (kilowatts)"))

# save to png
dev.copy(png,'plot2.png',  width = 480, height = 480)
dev.off()

