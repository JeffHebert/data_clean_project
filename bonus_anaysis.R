## BONUS CODE for run_analysis.R
## Created by Jeff Hebert in August 2014

## This script includes some code which will analyze data in the subject_summary
## data frame that is produced by run_analysis.R

## Note: This analysis requires packages rpart and rpart.plot


##
## Simple function to create box plots for any given column
##

plot_col <- function(column = 3) {
    boxplot(subject_summary[, column] ~ subject_summary$Activity, 
            main = names(subject_summary[column]))
    points(subject_summary[, column] ~ subject_summary$Activity)
}


# Example plots
plot_col(20)   # tBodyAccJerk_std_Z
plot_col(50)   # fBodyAcc_meanFreq_Y
plot_col("fBodyGyro_meanFreq_Y")


##
## Classification Tree to predict Activity from sensor measurements
##

library(rpart)
library(rpart.plot)
subject_rpart <- rpart(Activity ~., data=subject_summary[, 2:81])
prp(subject_rpart, varlen=0)


##
## Use plot_col function to Inspect data from variables identified with the decision tree
##

plot_col("tBodyAcc_std_X")       #Identify statonary vs moving
plot_col("tGravityAcc_mean_X")   #Identify laying among stationary 
plot_col("tBodyGyro_mean_X")     #Identify sitting among stationary 
plot_col("tGravityAcc_std_X")    #Identify walking flat among moving
plot_col("tBodyAccMag_mean")     #Identify walking downstairs among moving


