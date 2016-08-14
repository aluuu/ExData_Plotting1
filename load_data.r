if(!dir.exists("./data")){
    dir.create("./data")
}
dataset_archive <- "./data/UCI_EPC_Dataset.zip"
if(!file.exists(dataset_archive)){
    download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = dataset_archive)
    unzip(zipfile = dataset_archive, exdir = "./data/")
}

data <- read.table(pipe("grep \"^[1-2]/2/2007\" \"./data/household_power_consumption.txt\""), na.strings = "?", sep = ";")
names(data) <- c("date", "time", "global_active_power", "global_reactive_power", "voltage", "global_intensity", "sub_metering_1", "sub_metering_2", "sub_metering_3")
data$date <- as.Date(data$date, format="%d/%m/%Y")
data$time <- strptime(paste(data$date, data$time), format="%Y-%m-%d %H:%M:%S")
