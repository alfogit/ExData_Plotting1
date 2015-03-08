# To correctly run the code in this file, please source the readhouses.R file 
# and set the correct path to the household_power_consumption.txt file in your system in variable datafile:

datafile = "../../household_power_consumption.txt" # amend as needed

# start of code
houses <- read.houses("../../household_power_consumption.txt", '2007-02-01', '2007-02-02')

png("plot2.png", width = 480, height = 480)
with(houses, plot(datetime, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowats)"))
with(houses, lines(datetime, Global_active_power))
dev.off()

