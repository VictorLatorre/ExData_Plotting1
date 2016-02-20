# Loading Data by Victor

setwd("~/Downloads/R/EDA_CourseProject")

library(httr)

direction <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
data <- "data"
if(!file.exists(data)){
	dir.create(data)
}
graph <- "graph"
if(!file.exists(graph)){
	dir.create(graph)
}
file <- paste(getwd(), "/data/household_power_consumption.zip", sep = "")
if(!file.exists(file)){
	download.file(direction, file, method="curl", mode="wb")
}
file <- paste(getwd(), "/data/household_power_consumption.txt", sep = "")
if(!file.exists(file)){
	unzip(file, list = FALSE, overwrite = FALSE, exdir = data)
}
setwd("data")
if(file.exists("datasumary.rds")){        # Avoiding problems if we have run the code previously with other information.
    file.remove("datasumary.rds")
}
setwd("~/Downloads/R/EDA_CourseProject")
datasummary <- paste(getwd(), "/data/datasummary.rds", sep = "")
if(!file.exists(datasummary)){
	data <- "data/household_power_consumption.txt"
    load_data <- read.table(data, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
	load_data$Time <- strptime(paste(load_data$Date, load_data$Time), "%d/%m/%Y %H:%M:%S")
	load_data$Date <- as.Date(load_data$Date, "%d/%m/%Y")
	timewindow <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
	load_data <- subset(load_data, Date %in% timewindow)
	datasummary <- paste(getwd(), "/", "data", "/", "datasummary", ".rds", sep="")
	saveRDS(load_data, datasummary)
} else {
  data <- "data/datasummary.rds"
  load_data <- readRDS(data)
}


