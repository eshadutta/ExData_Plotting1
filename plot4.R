	### Please change the absolute path to run the script	

	png(file="C:/Users/esha/Desktop/Courseera/plot4.png")	
	household_power_consumption <- read.table("C:/Users/esha/Desktop/Courseera/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", dec = ".")
	
      main_data <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")

	par(mfrow = c(2,2))

	###plot1
	plot(main_data$Global_active_power, type = "l", xaxt = 'n', ylab = "Global Active Power", xlab = "")
	axis(1, at = c(0, length(main_data$Global_active_power)/2, length(main_data$Global_active_power)), labels = c('Thu', 'Fri', 'Sat'))

	###plot2
	plot(main_data$Voltage, type = "l", xaxt = 'n', ylab = "Voltage", xlab = "datetime")
	axis(1, at = c(0, length(main_data$Voltage)/2, length(main_data$Voltage)), labels = c('Thu', 'Fri', 'Sat'))

	###plot3
	plot(main_data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", xaxt = 'n')
	lines(main_data$Sub_metering_2, type = "l", col = "red")
	lines(main_data$Sub_metering_3, type = "l", col = "blue")
	axis(1, at = c(0, length(main_data$Global_active_power)/2, length(main_data$Global_active_power)), labels = c('Thu', 'Fri', 'Sat'))
	legend("topright", legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c("black", "red", "blue"), lty = 1, cex = 0.8, xjust = 0)

	###plot4
	plot(main_data$Global_reactive_power, type = "l", xaxt = 'n', ylab = "Global_reactive_power", xlab = "datetime")
	axis(1, at = c(0, length(main_data$Global_active_power)/2, length(main_data$Global_active_power)), labels = c('Thu', 'Fri', 'Sat'))	

	dev.off()

