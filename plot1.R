	### Please change the absolute path to run the script	

	png(file="C:/Users/esha/Desktop/Courseera/plot1.png")	
	household_power_consumption <- read.table("C:/Users/esha/Desktop/Courseera/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", dec = ".")

      main_data <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007") ### Subsetting relevant data
      
	hist(main_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
	
	dev.off()

