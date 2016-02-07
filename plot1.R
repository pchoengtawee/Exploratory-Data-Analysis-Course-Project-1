rawdata <- "/Users/Pinny/Documents/DataSience_JHK/Data Sciencist's Toolbox/Exploratory Data Analysis/Week1 Assignment/household_power_consumption.txt"
data <- read.table(rawdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="green", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
