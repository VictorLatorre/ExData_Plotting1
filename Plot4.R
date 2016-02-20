setwd("~/Downloads/R/EDA_CourseProject")

source("LoadingData.R")

plot4 <- paste(getwd(), "/graph/Plot4.png", sep = "")
if(!file.exists(plot4)){
    
    png("graph/Plot4.png", width = 480, height = 480)
    par(mfrow=c(2,2))
    #Plot 1
    plot(x=load_data$Time,y=load_data$Global_active_power, type = "l",main = "", xlab="Date", ylab = "Global Active Power (kW)", col = "black")
    #Plot 2
    plot(x=load_data$Time,y=load_data$Voltage, type = "l",main = "", xlab="datetime", ylab = "Voltage", col = "black")
    #Plot 3
    plot(load_data$Time, load_data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(load_data$Time, load_data$Sub_metering_2, type="l", col="red")
    lines(load_data$Time, load_data$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    #Plot 4
    plot(x=load_data$Time,y=load_data$Global_reactive_power, type = "l",main = "", xlab="datetime", ylab = "Global_reactive_power", col = "black")
    dev.off()
} else {
    png("graph/Plot4.png", width = 480, height = 480)
    par(mfrow=c(2,2))
    #Plot 1
    plot(x=load_data$Time,y=load_data$Global_active_power, type = "l",main = "", xlab="Date", ylab = "Global Active Power (kW)", col = "black")
    #Plot 2
    plot(x=load_data$Time,y=load_data$Voltage, type = "l",main = "", xlab="datetime", ylab = "Voltage", col = "black")
    #Plot 3
    plot(load_data$Time, load_data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(load_data$Time, load_data$Sub_metering_2, type="l", col="red")
    lines(load_data$Time, load_data$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    #Plot 4
    plot(x=load_data$Time,y=load_data$Global_reactive_power, type = "l",main = "", xlab="datetime", ylab = "Global_reactive_power", col = "black")
    dev.off()
}
