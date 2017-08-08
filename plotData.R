## Load Library
library(data.table)
library(dplyr)
library(lubridate)
library(lattice)

## Load Electric power consumption
epcdata <- fread("./household_power_consumption.txt", na.strings = "?")
f_data <- epcdata[dmy(Date) == ymd("2007-02-01") | dmy(Date) == ymd("2007-02-02")] ## filtered for 2007-02-01 & 2007-02-02 dates
rm(epcdata) # remove huge data from the memory
# Add week Day using lubridate
na.omit(f_data)
# creating Datetime column
f_data <- f_data[,DateTime:= dmy_hms(paste(Date,Time), label = TRUE)]
