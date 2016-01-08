# Plotting Assignment 1 for Exploratory Data Analysis
# Johns Hopkins University, Coursera

# email : itai.weiss@gmail.com

HousePowCons <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.string="?")

# filter only 2 dates from the set
HousePowCons_200702 <- HousePowCons[HousePowCons$Date=="1/2/2007"|HousePowCons$Date=="2/2/2007",]

# fix the Date and Timestamp types
HousePowCons_200702$Date <-as.Date(HousePowCons_200702$Date, format="%d/%m/%Y")
HousePowCons_200702$Time <-strptime(paste(HousePowCons_200702$Date,HousePowCons_200702$Time), format="%Y-%m-%d %H:%M:%S")

# review the data types
str(HousePowCons_200702)

# setting locale to en_US for proper day in a week labels
locale_original <- Sys.getlocale( category = "LC_TIME" )
Sys.setlocale("LC_TIME", "English")

