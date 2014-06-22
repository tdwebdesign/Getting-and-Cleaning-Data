## From features_info.txt in original database
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time 
domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 
3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated 
into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner 
frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and 
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
## End from features_info.txt

Here is a list of columns selected for the tidy data set.  They refer to mean() and std() measurements.

Column Names

Subject				30 subjects used to obtain train and test data
Activity			6 different activities analyzed:  Laying, Sitting, Standing, Walking, Walking Downstairs, Walking Upstairs
tBodyAcc_mean___X		unit is seconds
tBodyAcc_mean___Y		unit is seconds
tBodyAcc_mean___Z		unit is seconds
tGravityAcc_mean___X		unit is seconds
tGravityAcc_mean___Y		unit is seconds
tGravityAcc_mean___Z		unit is seconds
tBodyAccJerk_mean___X		unit is seconds	
tBodyAccJerk_mean___Y		unit is seconds
tBodyAccJerk_mean___Z		unit is seconds
tBodyGyro_mean___X		unit is seconds
tBodyGyro_mean___Y		unit is seconds
tBodyGyro_mean___Z		unit is seconds
tBodyGyroJerk_mean___X		unit is seconds
tBodyGyroJerk_mean___Y		unit is seconds	
tBodyGyroJerk_mean___Z		unit is seconds
tBodyAccMag_mean__		unit is seconds
tGravityAccMag_mean__		unit is seconds
tBodyAccJerkMag_mean__		unit is seconds
tBodyGyroMag_mean__		unit is seconds
tBodyGyroJerkMag_mean__		unit is seconds
fBodyAcc_mean___X		
fBodyAcc_mean___Y
fBodyAcc_mean___Z
fBodyAcc_meanFreq___X
fBodyAcc_meanFreq___Y
fBodyAcc_meanFreq___Z
fBodyAccJerk_mean___X
fBodyAccJerk_mean___Y
fBodyAccJerk_mean___Z
fBodyAccJerk_meanFreq___X
fBodyAccJerk_meanFreq___Y
fBodyAccJerk_meanFreq___Z
fBodyGyro_mean___X
fBodyGyro_mean___Y
fBodyGyro_mean___Z
fBodyGyro_meanFreq___X
fBodyGyro_meanFreq___Y
fBodyGyro_meanFreq___Z
fBodyAccMag_mean__
fBodyAccMag_meanFreq__
fBodyBodyAccJerkMag_mean__
fBodyBodyAccJerkMag_meanFreq__
fBodyBodyGyroMag_mean__
fBodyBodyGyroMag_meanFreq__
fBodyBodyGyroJerkMag_mean__
fBodyBodyGyroJerkMag_meanFreq__
tBodyAcc_std___X		unit is seconds		
tBodyAcc_std___Y		unit is seconds
tBodyAcc_std___Z		unit is seconds
tGravityAcc_std___X		unit is seconds
tGravityAcc_std___Y		unit is seconds	
tGravityAcc_std___Z		unit is seconds
tBodyAccJerk_std___X		unit is seconds
tBodyAccJerk_std___Y		unit is seconds
tBodyAccJerk_std___Z		unit is seconds
tBodyGyro_std___X		unit is seconds
tBodyGyro_std___Y		unit is seconds
tBodyGyro_std___Z		unit is seconds
tBodyGyroJerk_std___X		unit is seconds
tBodyGyroJerk_std___Y		unit is seconds
tBodyGyroJerk_std___Z		unit is seconds
tBodyAccMag_std__		unit is seconds
tGravityAccMag_std__		unit is seconds
tBodyAccJerkMag_std__		unit is seconds
tBodyGyroMag_std__		unit is seconds
tBodyGyroJerkMag_std__		unit is seconds
fBodyAcc_std___X
fBodyAcc_std___Y
fBodyAcc_std___Z
fBodyAccJerk_std___X
fBodyAccJerk_std___Y
fBodyAccJerk_std___Z
fBodyGyro_std___X
fBodyGyro_std___Y
fBodyGyro_std___Z
fBodyAccMag_std__
fBodyBodyAccJerkMag_std__
fBodyBodyGyroMag_std__
fBodyBodyGyroJerkMag_std__
