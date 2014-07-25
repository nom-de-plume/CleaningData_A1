# Cleaning Data - Course Project 1 - plot1
#   This is my work for the first assignment (plot 1)

#Should move loading data to another function/script as it is common to all plots

#load necessary libraries
#library(sqldf)

#static variables
doLoadData <- FALSE #choose whether to load the data from the file (just shortcut if data is already loaded)

urlFileName <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
zipFileName <- "./getdata_projectfiles_UCI HAR Dataset.zip"
directoryName <- "./UCI HAR Dataset"

testSubjectsFileName <- paste(directoryName, "/test/subject_test.txt",sep = "")
testTypesFileName <- paste(directoryName, "/test/y_test.txt",sep = "")
testDataSetFileName <- paste(directoryName, "/test/X_test.txt",sep = "")

trainSubjectsFileName <- paste(directoryName, "/train/subject_train.txt",sep = "")
trainTypesFileName <- paste(directoryName, "/train/y_train.txt",sep = "")
trainDataSetFileName <- paste(directoryName, "/train/X_train.txt",sep = "")

numColumnsDataSet <- 561
numRowsDataSet <- 10 #For testing - should default to -1 for entire dataset

columnHeaderTestType <- "TestType"
columnHeaderSubject <- "Subject"

#begDate <- '1/2/2007' ##dd/mm/yyyy
#endDate <- '2/2/2007' 

# download and/or extract file if it does not exist
if (!file.exists(zipFileName)) {
	download.file(urlFileName, zipFileName, 'curl')
}

if (!file.exists(directoryName)) {
	unzip(zipFileName);
}

# next load the individual datasets, merge, etc
testSubjDataFrame <- read.table(testSubjectsFileName,
	col.names = columnHeaderSubject,
	nrows = numRowsDataSet)

testTypeDataFrame <- read.table(testTypesFileName,
	col.names = columnHeaderTestType,
	nrows = numRowsDataSet)

testDataFrame <- read.table(
	file = testDataSetFileName,
	colClasses = rep("numeric",numColumnsDataSet),
	nrows = numRowsDataSet)
	
testCompleteDataFrame <- cbind(testSubjDataFrame, testTypeDataFrame, testDataFrame)	
  
trainSubjDataFrame <- read.table(trainSubjectsFileName,
	col.names = columnHeaderSubject,
	nrows = numRowsDataSet)
  
trainTypeDataFrame <- read.table(trainTypesFileName,
	col.names = columnHeaderTestType,
	nrows = numRowsDataSet)
  
trainDataFrame <- read.table(
	file = trainDataSetFileName,
	colClasses = rep("numeric",numColumnsDataSet),
	nrows = numRowsDataSet)  
	
trainCompleteDataFrame <- cbind(trainSubjDataFrame, trainTypeDataFrame, trainDataFrame)		