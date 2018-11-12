	### Please change the absolute path to run the script	

	png(file="C:/Users/esha/Desktop/Courseera/plot3.png")	
	household_power_consumption <- read.table("C:/Users/esha/Desktop/Courseera/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", dec = ".")

	### Subsetting the data
      main_data <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")
	
	### Plotting the three graphs
	plot(main_data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", xaxt = 'n')
	lines(main_data$Sub_metering_2, type = "l", col = "red")
	lines(main_data$Sub_metering_3, type = "l", col = "blue")

	### Labelling the x-axis
	axis(1, at = c(0, length(main_data$Global_active_power)/2, length(main_data$Global_active_power)), labels = c('Thu', 'Fri', 'Sat'))
	
	### Adding legend
	legend("topright", legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col = c("black", "red", "blue"), lty = 1, cex = 0.8, xjust = 0)
	
	dev.off()
