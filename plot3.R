# To correctly run the code in this file, please source the readhouses.R file 
# and set the correct path to the household_power_consumption.txt file in your system in variable datafile:

datafile = "../../household_power_consumption.txt" # amend as needed

# start of code
houses <- read.houses("../../household_power_consumption.txt", '2007-02-01', '2007-02-02')

png("plot3.png", width = 480, height = 480)
with(houses, plot(datetime, apply(houses[, 7:9], 1, max), type="n", xlab="", ylab="Energy sub metering"))
with(houses, lines(datetime, Sub_metering_1, col="black"))
with(houses, lines(datetime, Sub_metering_2, col="red"))
with(houses, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

