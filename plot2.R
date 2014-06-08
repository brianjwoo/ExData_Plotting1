##Plotting Assignment 1.2

power <- read.csv("C:/Users/B/datasciencecoursera/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings='?')
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power <- cbind(DateTime = strptime(paste(power$Date,power$Time), '%Y-%m-%d %H:%M:%S'), power)

dates <- as.Date(c('2007-02-01','2007-02-02'))
power.subset <- subset(power, power$Date %in% dates)

png(filename = 'plot2.png')

plot(power.subset$DateTime, power.subset$Global_active_power, type='l', xlab ='', ylab = 'Global Active Power (kilowatts)')

dev.off()