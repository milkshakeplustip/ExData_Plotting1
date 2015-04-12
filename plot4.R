
## Setting the working directory.

setwd("/Users/Javier/Documents/Personal/UNAM/Sexto Semestre/Coursera/Exploratory_Data_Analysis/Week_1")

## Reading the data and converting dates and times.

hpc <- read.table("household_power_consumption_subset.txt", sep = ";", na.strings = "?", col.names = c("Date", "Time", "Global Active Power", "Global Reactive Power", "Voltage", "Global Intensity", "Sub Metering 1", "Sub Metering 2", "Sub Metering 3"))
hpc$DateTime <- paste(hpc$Date, hpc$Time)
hpc$DateTime <- strptime(hpc$DateTime, "%d/%m/%Y %H:%M:%S")

## Plotting

par(mfcol = c(2,2))
plot(hpc$DateTime, hpc$Global.Active.Power, xlab = "", ylab = "Global Active Power", type = "l", col = "cyan")
plot(hpc$DateTime, hpc$Sub.Metering.1, xlab = "", ylab = "Energy sub metering", col = "cyan", type = "l")
lines(hpc$DateTime, hpc$Sub.Metering.2, col = "magenta")
lines(hpc$DateTime, hpc$Sub.Metering.3, col = "green")
legend("topright", lty = c(1,1,1), col = c("cyan", "magenta", "green"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 1, bty = "n")
plot(hpc$DateTime, hpc$Voltage, xlab = "datetime", ylab = "Voltage", type = "l", col = "cyan") 
plot(hpc$DateTime, hpc$Global.Reactive.Power, xlab = "datetime", ylab = "Global_reactive_power", type = "l", col = "cyan", yaxt = "n")
axis(side = 2, at = c(0.0,0.1,0.2,0.3,0.4,0.5))
