Original data was obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
run_analysis.R that does the following
1.	Merges the training and the test sets to create one data set.
Data was read for X_train, X_test, y_train, y_test, subject_test, and subject_train
Files combined to keep integrity of data
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
features.txt was used.  The grep function was used to subset mean() and std() data.  
3.	Uses descriptive activity names to name the activities in the data set
For loop used to read activities and if, else if to assign descriptive names
4.	Appropriately labels the data set with descriptive variable names. 
Punctuation was removed for good naming practices
5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
The melt and dcast functions were used to create this data set.
