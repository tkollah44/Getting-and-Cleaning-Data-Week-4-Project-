# Getting-and-Cleaning-Data-Week-4-Project-
## Cleaning and Getting Data course project code book

Analysis process
# Analysis process

The analysis script, run_analysis.R reads in the processed experiment data and performs a number of steps to get it into summary form.

@@ -21,72 +21,139 @@ subject_id - The id of the experiment participant.
activity_labels - The name of the activity that the measurements correspond to, like LAYING or WALKING.
All of the following fields represent the mean of recorded data points for the given subject and activity. The detailed description of the different measurement types can be found in the features_info.txt file included in the data zip file.

tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyAccMag_mean
tGravityAccMag_mean
tBodyAccJerkMag_mean
tBodyGyroMag_mean
tBodyGyroJerkMag_mean
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyAccMag_mean
fBodyAccJerkMag_mean
fBodyGyroMag_mean
fBodyGyroJerkMag_mean
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_std
tGravityAccMag_std
tBodyAccJerkMag_std
tBodyGyroMag_std
tBodyGyroJerkMag_std
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyAccMag_std
fBodyAccJerkMag_std
fBodyGyroMag_std
fBodyGyroJerkMag_std
More information
* tBodyAcc_mean_X

* tBodyAcc_mean_Y

* tBodyAcc_mean_Z

* tGravityAcc_mean_X

* tGravityAcc_mean_Y

* tGravityAcc_mean_Z

* tBodyAccJerk_mean_X

* tBodyAccJerk_mean_Y

* tBodyAccJerk_mean_Z

* tBodyGyro_mean_X

* tBodyGyro_mean_Y

* tBodyGyro_mean_Z

* tBodyGyroJerk_mean_X

* tBodyGyroJerk_mean_Y

* tBodyGyroJerk_mean_Z

* tBodyAccMag_mean

* tGravityAccMag_mean

* tBodyAccJerkMag_mean

* tBodyGyroMag_mean

* tBodyGyroJerkMag_mean

* fBodyAcc_mean_X

* fBodyAcc_mean_Y

* fBodyAcc_mean_Z

* fBodyAccJerk_mean_X

* fBodyAccJerk_mean_Y

* fBodyAccJerk_mean_Z

* fBodyGyro_mean_X

* fBodyGyro_mean_Y

* fBodyGyro_mean_Z

* fBodyAccMag_mean

* fBodyAccJerkMag_mean

* fBodyGyroMag_mean

* fBodyGyroJerkMag_mean

* tBodyAcc_std_X

* tBodyAcc_std_Y

* tBodyAcc_std_Z

* tGravityAcc_std_X

* tGravityAcc_std_Y

* tGravityAcc_std_Z

* tBodyAccJerk_std_X

* tBodyAccJerk_std_Y

* tBodyAccJerk_std_Z

* tBodyGyro_std_X

* tBodyGyro_std_Y

* tBodyGyro_std_Z

* tBodyGyroJerk_std_X

* tBodyGyroJerk_std_Y

* tBodyGyroJerk_std_Z

* tBodyAccMag_std

* tGravityAccMag_std

* tBodyAccJerkMag_std

* tBodyGyroMag_std

* tBodyGyroJerkMag_std

* fBodyAcc_std_X

* fBodyAcc_std_Y

* fBodyAcc_std_Z

* fBodyAccJerk_std_X

* fBodyAccJerk_std_Y

* fBodyAccJerk_std_Z

* fBodyGyro_std_X

* fBodyGyro_std_Y

* fBodyGyro_std_Z

* fBodyAccMag_std

* fBodyAccJerkMag_std

* fBodyGyroMag_std

* fBodyGyroJerkMag_std


# More information

Detailed information on the experiment and the data can be found in the README.txt and features_info.txt files included in the experiment data zip file or find more information on the dataset homepage.
 8  README.md 
@@ -1,12 +1,12 @@
Getting and Cleaning Data
## Getting and Cleaning Data

Contents
# Contents

This repo contains 2 following files.

run_analysis.R - R scrip to perform analysis
CodeBook.md - document that describes the variables, data, and transformations
About run_analysis script
**CodeBook.md** - document that describes the variables, data, and transformations
About **run_analysis** script

If the data files for this project is not in your working directory, the script will automatically download it to your working directory, then will unzip it.

