# Cleaning Data - Course Project 1 - plot1
#   This is my work for the first assignment 

#load necessary libraries
library(reshape2)

## 00 - function which takes the activity number and converts it to the descriptive name
returnMapping <- function(activity_number,activity_map){
	
	return(activity_map$V2[activity_map$V1 == activity_number])
}

## 01 - static variables
#doLoadData <- FALSE #choose whether to load the data from the file (just shortcut if data is already loaded)

urlFileName <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
zipFileName <- "./getdata_projectfiles_UCI HAR Dataset.zip"
directoryName <- "./UCI HAR Dataset"


dataHeadingsFileName <- paste(directoryName, "/features.txt",sep = "")
activitiesFileName <- paste(directoryName, "/activity_labels.txt",sep = "")

testSubjectsFileName <- paste(directoryName, "/test/subject_test.txt",sep = "")
testTypesFileName <- paste(directoryName, "/test/y_test.txt",sep = "")
testDataSetFileName <- paste(directoryName, "/test/X_test.txt",sep = "")

trainSubjectsFileName <- paste(directoryName, "/train/subject_train.txt",sep = "")
trainTypesFileName <- paste(directoryName, "/train/y_train.txt",sep = "")
trainDataSetFileName <- paste(directoryName, "/train/X_train.txt",sep = "")

numColumnsDataSet <- 561
numRowsDataSet <- -1 #For testing - should default to -1 for entire dataset

columnHeaderTestType <- "TestType"
columnHeaderTestTypeName <- "TestTypeName"
columnHeaderSubject <- "Subject"

## 02 - download and/or extract file if it does not exist
if (!file.exists(zipFileName)) {
	download.file(urlFileName, zipFileName, 'curl')
}

if (!file.exists(directoryName)) {
	unzip(zipFileName);
}

## 03 - next load the individual datasets, merge, etc

dataHeadingsDataFrame <- read.table(dataHeadingsFileName)
dataHeadingsVector <- dataHeadingsDataFrame[,2]

activitiesDataFrame <- read.table(activitiesFileName)

## 03.01 - test dataset
testSubjDataFrame <- read.table(testSubjectsFileName,
	col.names = columnHeaderSubject,
	nrows = numRowsDataSet)

testTypeDataFrame <- read.table(testTypesFileName,
	col.names = columnHeaderTestType,
	nrows = numRowsDataSet)
	
# Add the activity labels
testTypeDataFrame$TestTypeName <- sapply(testTypeDataFrame$TestType, returnMapping, activitiesDataFrame)	

testDataFrame <- read.table(
	file = testDataSetFileName,
	colClasses = rep("numeric",numColumnsDataSet),
	col.names = dataHeadingsVector,
	nrows = numRowsDataSet)
	
# only take the mean and std	
testSubsetDataFrame <- testDataFrame[,grepl("mean\\(\\)|std\\(\\)", dataHeadingsVector)]
	
testCompleteDataFrame <- cbind(testSubjDataFrame, testTypeDataFrame$TestTypeName, testSubsetDataFrame)	
names(testCompleteDataFrame)[2] <- columnHeaderTestTypeName

## 03.02 - train dataset
trainSubjDataFrame <- read.table(trainSubjectsFileName,
	col.names = columnHeaderSubject,
	nrows = numRowsDataSet)
  
trainTypeDataFrame <- read.table(trainTypesFileName,
	col.names = columnHeaderTestType,
	nrows = numRowsDataSet)
  
# Add the activity labels
trainTypeDataFrame$TestTypeName <- sapply(trainTypeDataFrame$TestType, returnMapping, activitiesDataFrame)	
  
trainDataFrame <- read.table(
	file = trainDataSetFileName,
	colClasses = rep("numeric",numColumnsDataSet),
	col.names = dataHeadingsVector,	
	nrows = numRowsDataSet)  
	
# only take the mean and std		
trainSubsetDataFrame <- trainDataFrame[,grepl("mean\\(\\)|std\\(\\)", dataHeadingsVector)]
	
trainCompleteDataFrame <- cbind(trainSubjDataFrame, trainTypeDataFrame$TestTypeName, trainSubsetDataFrame)		
names(trainCompleteDataFrame)[2] <- columnHeaderTestTypeName

## 03.03 - merge both datasets
allDataFrame <- rbind(testCompleteDataFrame, trainCompleteDataFrame)

## 04 - replace column headings as per code book (see codebook.md for name descriptions
namesAllDataFrame <- c(
	columnHeaderSubject,
	columnHeaderTestTypeName,
	
	'tBodyAccMeanX',
	'tBodyAccMeanY',
	'tBodyAccMeanZ',
	'tBodyAccStdX',
	'tBodyAccStdY',
	'tBodyAccStdZ',	
	
	'tGravityAccMeanX',
	'tGravityAccMeanY',
	'tGravityAccMeanZ',
	'tGravityAccStdX',
	'tGravityAccStdY',
	'tGravityAccStdZ',	
	
	'tBodyAccJerkMeanX',
	'tBodyAccJerkMeanY',
	'tBodyAccJerkMeanZ',
	'tBodyAccJerkStdX',
	'tBodyAccJerkStdY',
	'tBodyAccJerkStdZ',	
	
	'tBodyGyroMeanX',
	'tBodyGyroMeanY',
	'tBodyGyroMeanZ',
	'tBodyGyroStdX',
	'tBodyGyroStdY',
	'tBodyGyroStdZ',	
	
	'tBodyGyroJerkMeanX',
	'tBodyGyroJerkMeanY',
	'tBodyGyroJerkMeanZ',
	'tBodyGyroJerkStdX',
	'tBodyGyroJerkStdY',
	'tBodyGyroJerkStdZ',	

	'tBodyAccMagMean',
	'tBodyAccMagStd',	
	
	'tGravityAccMagMean',
	'tGravityAccMagStd',	
	
	'tBodyAccJerkMagMean',
	'tBodyAccJerkMagStd',	
	
	'tBodyGyroMagMean',
	'tBodyGyroMagStd',	
	
	'tBodyGyroJerkMagMean',
	'tBodyGyroJerkMagStd',	
	
	'fBodyAccMeanX',
	'fBodyAccMeanY',
	'fBodyAccMeanZ',
	'fBodyAccStdX',
	'fBodyAccStdY',
	'fBodyAccStdZ',	
	
	'fBodyAccJerkMeanX',
	'fBodyAccJerkMeanY',
	'fBodyAccJerkMeanZ',
	'fBodyAccJerkStdX',
	'fBodyAccJerkStdY',
	'fBodyAccJerkStdZ',	
	
	'fBodyGyroMeanX',
	'fBodyGyroMeanY',
	'fBodyGyroMeanZ',
	'fBodyGyroStdX',
	'fBodyGyroStdY',
	'fBodyGyroStdZ',	
	
	'fBodyAccMagMean',
	'fBodyAccMagStd',	

	'fBodyBodyAccJerkMagMean',
	'fBodyBodyAccJerkMagStd',	
	
	'fBodyBodyGyroMagMean',
	'fBodyBodyGyroMagStd',	
	
	'fBodyBodyGyroJerkMagMean',
	'fBodyBodyGyroJerkMagStd'
	)

names(allDataFrame) <- namesAllDataFrame

## 05 - write the original dataset
write.table(allDataFrame, "./tidyData.txt")

## 06 - create the average subset

# i = 3
i <- 3
#get the averages for each variable
subsetData <- dcast(data = allDataFrame, formula = Subject ~ TestTypeName, fun.aggregate=mean, value.var = namesAllDataFrame[i])
aggregateDataFrame <- melt(subsetData, id.vars = c(columnHeaderSubject), variable.name = columnHeaderTestTypeName, value.name = namesAllDataFrame[i])

# i = 4,...
for (i in 4:length(namesAllDataFrame))
{
	#get the averages for each variable
	subsetData <- dcast(data = allDataFrame, formula = Subject ~ TestTypeName, fun.aggregate=mean, value.var = namesAllDataFrame[i])
	
	#split by subject 
	aggregateDataFrame <- merge(aggregateDataFrame, 
		melt(subsetData, id.vars = c(columnHeaderSubject), variable.name = columnHeaderTestTypeName, value.name = namesAllDataFrame[i]), 
		by=c(columnHeaderSubject,columnHeaderTestTypeName))

	
}

#Sort by subject
aggregateDataFrame <- aggregateDataFrame[ order(aggregateDataFrame$Subject), ]

## 07 - write the aggregated set
write.table(aggregateDataFrame, "./aggregatedTidyData.txt")