	
	### Please change the absolute path to run the script	

	png(file="C:/Users/esha/Desktop/Courseera/plot2.png")	
	household_power_consumption <- read.table("C:/Users/esha/Desktop/Courseera/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", dec = ".")
		
      sub_data <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007") ### Subsetting the database

	plot(sub_data$Global_active_power, type = "l", xaxt = 'n', ylab = "Global Active Power (kilowatts)", xlab = "")
	axis(1, at = c(0, length(sub_data$Global_active_power)/2, length(sub_data$Global_active_power)), labels = c('Thu', 'Fri', 'Sat'))
	
	dev.off()
