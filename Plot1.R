#setwd("~/Downloads/R/EDA_CourseProject")


source("LoadingData.R")

Plot1 <- paste(getwd(), "/graph/Plot1.png", sep = "")
if(!file.exists(Plot1)){
    png("graph/Plot1.png", width = 480, height = 480)
    hist(load_data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kW)", ylab = "Frequency", col = "red")
    dev.off()
} else {
    png("graph/Plot1.png", width = 480, height = 480)
    hist(load_data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kW)", ylab = "Frequency", col = "red")
    dev.off()
}
