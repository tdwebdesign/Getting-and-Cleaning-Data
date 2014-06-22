library(reshape2)
##URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##download.file(URL, "UCI HAR Dataset.zip")
##unzip("UCI HAR Dataset.zip")

testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjectTestData <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjectTrainData <- read.table("./UCI HAR Dataset/train/subject_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

mergeData <- rbind(trainData, testData)
goodNames <- gsub("[[:punct:]]", "_", features$V2)
colnames(mergeData) <- goodNames
meanData <- mergeData[,grep("mean()", features$V2)]
stdData <- mergeData[,grep("std()", features$V2)]
meanStdData <- cbind(meanData, stdData)

mergeLabel <- rbind(trainLabel, testLabel)
colnames(mergeLabel) <- "Activity"
for(i in 1:10299){
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

subjectData <- rbind(subjectTrainData, subjectTestData)
colnames(subjectData) <- "Subject"

tidyData <- cbind(subjectData, mergeLabel, meanStdData)

tidyMelt <- melt(tidyData, id=c("Subject", "Activity"))
castData <- dcast(tidyMelt, Subject + Activity ~ variable, mean)
write.table(castData, file = "gettingAndCleaning.txt")