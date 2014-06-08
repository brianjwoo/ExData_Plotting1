##Plotting Assignment 1.1

power <- read.csv("C:/Users/B/datasciencecoursera/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings='?')
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power <- cbind(DateTime = strptime(paste(power$Date,power$Time), '%Y-%m-%d %H:%M:%S'), power)

dates <- as.Date(c('2007-02-01','2007-02-02'))
power.subset <- subset(power, power$Date %in% dates)

png(filename = 'plot1.png')

hist(power.subset$Global_active_power, col ='red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')

dev.off()
# 
# plot(power.subset$DateTime, power.subset$Global_active_power, type='l', xlab ='', ylab = 'Global Active Power (kilowatts)')
# 
# plot(power.subset$DateTime, power.subset$Sub_metering_1, type = 'l', xlab ='', ylab = 'Energy sub metering')
# lines(power.subset$DateTime, power.subset$Sub_metering_2, type = 'l', col = 'red')
# lines(power.subset$DateTime, power.subset$Sub_metering_3, type = 'l', col = 'blue')
# 
# plot(power.subset$DateTime, power.subset$Voltage, type='l')
# plot(power.subset$DateTime, power.subset$Global_reactive_power, type='l')

