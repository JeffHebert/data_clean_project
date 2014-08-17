Getting and Cleaning Data from Wearable Computers
===========

This project is for the Coursera course on obtaining and cleaning data.

This script does the following,
* Reads train and test data sets
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


Key Data Files
-------------

* Input data directory: UCI HAR Dataset
* Script file: run_analysis.R
* Results file: subject_summary.txt
* Results code book: code_book.md


Bonus analysis
-------------

The file bonus_anaysis.R includes a function to plot summary data by activity for a designated variable. The file also includes code to produce a classification tree to identify activity based on accelerometer and gyroscope data.


References
-------------
Data for this project obtained from the UCI Machine Learning Repository.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012