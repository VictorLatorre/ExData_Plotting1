setwd("~/Downloads/R/EDA_CourseProject")

source("LoadingData.R")

plot3 <- paste(getwd(), "/graph/Plot3.png", sep = "")
if(!file.exists(plot3)){
    png("graph/Plot3.png", width = 480, height = 480)
    plot(load_data$Time, load_data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(load_data$Time, load_data$Sub_metering_2, type="l", col="red")
    lines(load_data$Time, load_data$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    dev.off()
} else {
    plot(load_data$Time, load_data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(load_data$Time, load_data$Sub_metering_2, type="l", col="red")
    lines(load_data$Time, load_data$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}
