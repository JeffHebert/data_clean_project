Getting and Cleaning Data from Wearable Computers
===========

This project is for the Coursera course on obtaining and cleaning data.

The __run_analysis.R__ script does the following,

* Reads train and test data sets from the UCI HAR Dataset directory 
* Merges the training and the test sets to create a working data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Writes the tidy data set to the output file subject_summary.txt.


### Key Files


* Input data directory: __UCI HAR Dataset__
* Script file: __run_analysis.R__
* Results file: __subject_summary.txt__
* Results code book: __code_book.md__


### Bonus analysis


The file __bonus_anaysis.R__ includes a function to plot summary data by activity for a designated variable. This analysis uses the subject_summary data frame created by the run_analysis.R script. The file also includes code to produce a classification tree to identify activity based on accelerometer and gyroscope data.


### References


Data for this project obtained from the UCI Machine Learning Repository.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012