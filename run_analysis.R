# Exploratory Data Analysis - Course Project 1 - plot1
#   This is my work for the first assignment (plot 1)

#Should move loading data to another function/script as it is common to all plots

#load necessary libraries
#library(sqldf)

#static variables
doLoadData <- FALSE #choose whether to load the data from the file (just shortcut if data is already loaded)

urlFileName <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
zipFileName <- "./getdata_projectfiles_UCI HAR Dataset.zip"
directoryName <- "./UCI HAR Dataset"

testDataSetFileName <- paste(directoryName, "/test/X_test.txt",sep = "")
trainDataSetFileName <- paste(directoryName, "/train/X_train.txt",sep = "")

#begDate <- '1/2/2007' ##dd/mm/yyyy
#endDate <- '2/2/2007' 

# download and/or extract file if it does not exist
if (!file.exists(zipFileName)) {
	download.file(urlFileName, zipFileName, 'curl')
}

if (!file.exists(directoryName)) {
	unzip(zipFileName);
}

# next load the individual datasets