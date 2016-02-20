setwd("~/Downloads/R/EDA_CourseProject")


source("LoadingData.R")

Plot2 <- paste(getwd(), "/graph/Plot2.png", sep = "")
if(!file.exists(Plot2)){
    png("graph/Plot2.png", width = 480, height = 480)
    plot(x=load_data$Time,y=load_data$Global_active_power, type = "l",main = "Global Active Power", xlab="Date", ylab = "Global Active Power (kW)", col = "black")
    dev.off()
} else {
    png("graph/Plot2.png", width = 480, height = 480)
    plot(x=load_data$Time,y=load_data$Global_active_power, type = "l",main = "Global Active Power", xlab="Date",ylab = "Global Active Power (kW)", col = "black")
    dev.off()
}
