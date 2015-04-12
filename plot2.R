
## Setting the working directory.

setwd("/Users/Javier/Documents/Personal/UNAM/Sexto Semestre/Coursera/Exploratory_Data_Analysis/Week_1")

## Reading the data and converting dates and times.

hpc <- read.table("household_power_consumption_subset.txt", sep = ";", na.strings = "?", col.names = c("Date", "Time", "Global Active Power", "Global Reactive Power", "Voltage", "Global Intensity", "Sub Metering 1", "Sub Metering 2", "Sub Metering 3"))
hpc$DateTime <- paste(hpc$Date, hpc$Time)
hpc$DateTime <- strptime(hpc$DateTime, "%d/%m/%Y %H:%M:%S")

## Plotting

plot(hpc$DateTime, hpc$Global.Active.Power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l", col = "magenta")
