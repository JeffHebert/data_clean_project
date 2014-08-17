## Script run_analysis.R
## Created by Jeff Hebert in August 2014

## This script was a project from the Coursera course on obtaining and cleaning data

## This script does the following,
##  1 Reads train and test data sets
##  2 Merges the training and the test sets to create one data set.
##  3 Extracts only the measurements on the mean and standard deviation for each measurement. 
##  4 Uses descriptive activity names to name the activities in the data set
##  5 Appropriately labels the data set with descriptive variable names. 
##  6 Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 



setwd("C:/Users/Jeff/Documents/Courses/DataScience/data/data_clean_project")



##
##
##  1 Read train and test data sets
##
##

# Read column labels and clean up special characters
feature_labels <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[ ,2]
feature_labels <- gsub("-", "_", feature_labels )   # Replace dash with underscore
feature_labels <- gsub("\\()", "", feature_labels )   # Remove parentheses


# Read data and set column labels
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")

#names(x_train) <- feature_labels
#names(x_test) <- feature_labels


# Read subject data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")



##
##
##  2 Merge the training and the test sets to create one data set.
##
##

x_data <- rbind(x_train, x_test)
subject_data <- rbind(subject_train, subject_test)
names(subject_data) <- "Subject_ID"


##
##
##  3 Extract only the measurements on the mean and standard deviation for each measurement. 
##
##

# Get columns with mean or std in the column name
subset_cols <- grep("mean|std", feature_labels ) 
x_data_subset <- x_data[, subset_cols]


##
##
##  4 Uses descriptive activity names to name the activities in the data set
##
##

# Read activity data, then name columns and store row order
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_data <- rbind(y_train, y_test)
names(y_data) <- "Activity_Code"
y_data$order <- seq(nrow(y_data))

# Read activity label data, then name columns
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("Activity_Code", "Activity")

# Create activity table and return to original order which matches x_data order
activity_data <- cbind(subject_data, y_data)
activity_data <- merge(activity_data, activity_labels, by = "Activity_Code")
activity_data <- activity_data[order(activity_data$order), ]


##
##
##  5 Appropriately labels the data set with descriptive variable names. 
##
##

# Use names of columns selected during step 4
names(x_data_subset) <- feature_labels[subset_cols]



##
##
##  6 Create a second, independent tidy data set with the average of each variable
##    for each activity and each subject. 
##
##

# Create final data table and remove columns used for activity coding and row order
tidy_data <- cbind(activity_data, x_data_subset)
tidy_data$Activity_Code <- NULL
tidy_data$order <- NULL

# Create summary using aggregate function
subject_summary <- aggregate(.~Subject_ID+Activity, tidy_data, FUN = mean)

# Save summary data to output file
write.table(subject_summary, "tidy_summary_data.txt", row.name=FALSE)



