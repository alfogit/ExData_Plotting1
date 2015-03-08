# To correctly run the code in this file, please source the readhouses.R file 
# and set the correct path to the household_power_consumption.txt file in your system in variable datafile:

datafile = "../../household_power_consumption.txt" # amend as needed

# start of code
houses <- read.houses("../../household_power_consumption.txt", '2007-02-01', '2007-02-02')

png("plot1.png", width = 480, height = 480)
hist(houses$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

