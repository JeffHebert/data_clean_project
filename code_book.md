Getting and Cleaning Data from Wearable Computers
===========
    
This document describes how to interpret data produced by my work in
the Coursera course on obtaining and cleaning data. The prefixes t and f indicate data is measured in the time domane (prefix t) or the frequency domain (prefix f). The suffexes X, Y, and Z indicate the direction of the meaurement in the forward/backward (suffex X), left/right (suffex Y), or up/down (suffex Z) directions. Magnitudes (suffex Mag) were calculated using the Euclidean norm in the raw data set. 

Raw data was obtained from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.


### Cleaning Procedure


The train and test measurement data was combined into a single data frame and merged with train and test activity data. From the combined data, only features that report average and standard deviation of the raw data were summarized. This subset was summarized by calculating the average of each parameter grouped by subject and activity. The final output table has one row for each combination of subject and activity. Each row has columns for the average value of each of the selected gyroscope or accelerometer measurements.



### Input Data Descriptions


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


### Data units


Accelerations (BodyAcc, and GravityAcc, BodyAccMag, GravityAccMag) reported in m/s2

Rate of change accelerations (BodyAccJerk, BodyAccJerkMag) reported in m/s3

Rotation (BodyGyro, BodyGyroMag) reported in radians/s

Rate of change rotation acceleration (BodyGyroJerk, BodyGyroJerkMag) reported in radians/s3


### Output Data Descriptions for tidy_summary_data.txt


Subject_ID - Unique identifier for each of the 30 subjects in the study

Activity - Name of activity performed during measurement

* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

tBodyAcc-XYZ - Body acceleration in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

tGravityAcc-XYZ - Gravity acceleration in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

tBodyAccJerk-XYZ - Rate of change of body acceleration in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

tBodyGyro-XYZ - Angular velocity of body in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

tBodyGyroJerk-XYZ - Rate of change of angular velocity of body in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

tBodyAccMag - Total magnitude of X, Y, and Z body acceleration. The average of Mean and StDev measurements is reported.

tGravityAccMag - Total magnitude of X, Y, and Z gravity acceleration. The average of Mean and StDev measurements is reported.

tBodyAccJerkMag - Total magnitude of rate of change of body acceleration. The average of Mean and StDev measurements is reported.

tBodyGyroMag - Total magnitude of angular velocity of body in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

tBodyGyroJerkMag - Total magnitued of rate of change of angular velocity of body in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

fBodyAcc-XYZ - Frequency of body acceleration in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

fBodyAccJerk-XYZ - Frequency of rate of change of body acceleration in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

fBodyGyro-XYZ - Frequency of angular velocity of body in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

fBodyAccMag - Frequency of total mmagnitude of X, Y, and Z body acceleration. The average of Mean and StDev measurements is reported.

fBodyAccJerkMag - Frequency of total magnitude of rate of change of body acceleration. The average of Mean and StDev measurements is reported.

fBodyGyroMag - Frequency of angular velocity of body in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.

fBodyGyroJerkMag - Frequency of rate of change of angular velocity of body in X, Y, and Z axis respectively. The average of Mean and StDev measurements is reported.


### References


Data for this project obtained from the UCI Machine Learning Repository.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
