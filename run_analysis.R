library(reshape2)  ## library needed for melt and dcast functions
##URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##download.file(URL, "UCI HAR Dataset.zip") ##download file to file named "UCI HAR Dataset.zip"
unzip("UCI HAR Dataset.zip") ## unzip "UCI HAR Dataset.zip"

testData <- read.table("./UCI HAR Dataset/test/X_test.txt")                 ## read in x_test
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")              ## read in x_train
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")                ## read in y_test
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")             ## read in y_train
subjectTestData <- read.table("./UCI HAR Dataset/test/subject_test.txt")    ## read in subject_test
subjectTrainData <- read.table("./UCI HAR Dataset/train/subject_train.txt") ## read in subject_train
features <- read.table("./UCI HAR Dataset/features.txt")                    ## read in features

mergeData <- rbind(trainData, testData)                 ## merge train data and test data
goodNames <- gsub("[[:punct:]]", "_", features$V2)      ## remove punctuation from features
colnames(mergeData) <- goodNames                        ## label columns in data set with goodNames
meanData <- mergeData[,grep("mean()", features$V2)]     ## select columns with mean() in name
stdData <- mergeData[,grep("std()", features$V2)]       ## select columns with std() in name
meanStdData <- cbind(meanData, stdData)                 ## combine meanData and stdData

mergeLabel <- rbind(trainLabel, testLabel)              ## merge train labels and test labels
colnames(mergeLabel) <- "Activity"                      ## assign column name to "Activity"
for(i in 1:10299){                                      ## give descriptive names to Activities
  if(mergeLabel[i,] == 1){
    mergeLabel[i,] <- "WALKING"
  }
  else if(mergeLabel[i,] == 2){
    mergeLabel[i,] <- "WALKING_UPSTAIRS"
  }
  else if(mergeLabel[i,] == 3){
    mergeLabel[i,] <- "WALKING_DOWNSTAIRS"
  }
  else if(mergeLabel[i,] == 4){
    mergeLabel[i,] <- "SITTING"
  }
  else if(mergeLabel[i,] == 5){
    mergeLabel[i,] <- "STANDING"
  }
  else {
    mergeLabel[i,] <- "LAYING"
  }
}

subjectData <- rbind(subjectTrainData, subjectTestData) ## merge subject train and subject test data
colnames(subjectData) <- "Subject"                      ## assign column name to "Subject"

tidyData <- cbind(subjectData, mergeLabel, meanStdData) ## combine subject, activity, and data

tidyMelt <- melt(tidyData, id=c("Subject", "Activity")) ## melt data
castData <- dcast(tidyMelt, Subject + Activity ~ variable, mean) ## tidy data set with the average of each variable for each activity and each subject
write.table(castData, file = "gettingAndCleaning.txt") ## write data to file "gettingAndCleaning.txt"