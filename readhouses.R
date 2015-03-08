read.houses <- function(file, fromdate, todate)
{
  setClass('myDate')
  setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y"))
  
  data <- read.table(file, header=TRUE, sep=";", na.strings = "?", colClasses=c("myDate","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
  subset <- data[data$Date >= fromdate & data$Date <= todate, ]
  subset$datetime <- as.POSIXct(paste(subset$Date, subset$Time)) 
  
  return( subset )
}
