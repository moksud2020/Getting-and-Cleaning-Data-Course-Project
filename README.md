# Getting-and-Cleaning-Data-Course-Project
Getting and Cleaning Data Course Project 

## Data source

The source data set has obtained from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).The following files was extracted from the UCI HAR Dataset directory is used:

- features.txt - includes the descriptions for features measured
- train/X_train.txt - includes the measurements of the features in train set (one row - 1 measurement of 561 features)
- test/X_test.txt - includes the measurements of the features in test set
- train/subject_train.txt - subject for each measurement from the train set
- test/subject_test.txt - subject for each measurement from the test set
- train/y_train.txt - activity (from 1 to 6) for each measurement from the train set
- test/y_test.txt - activity (from 1 to 6) for each measurement from the test set

## Repository

This repository contains the following files:

- `README.md`, this file describe an overview of the data set and how it was transformed.
- `TidyData.txt`, is the exported final data after going through all transformation.
- `CodeBook.md`, a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data
the.
- `run_analysis.R`, the R script file that perform the data analysis by the following steps:
  - Merges the training and the test sets to create one data set.
  - Extracts only the measurements on the mean and standard deviation for each measurement.
  - Uses descriptive activity names to name the activities in the data set
  - Appropriately labels the data set with descriptive variable names.
  - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How it works?
The following steps was follow to perform the analysis:
- Download the data form this [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) source and unziped the data and stored it in UCI HAR Dataset directory.
- Read data all text file under this repository and assigned in the variables.
- The training and the test datasets has marged and assigned into new variable.
-There are some invalid characters in the original column names so the column_names variable is created for forcing unique column names with valid characters, with make.names() function. A new data frame is created by selecting columns (subject, id, mean and std) for each measurement from mergedData.(STEP 2: Extract only the measurements on the mean and standard deviation for each measurement of assignment).
- The id column of the masterDataSets replaced with the activity_name. This is the second column of the activity_labels variable. (STEP 3: Uses descriptive activity names to name the activities in the data set).
- The variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to timeDomainBodyAccelerometerMeanX).(STEP 4: Appropriately labels the data set with descriptive variable names).
- finalDataSets is created by sumarizing masterDataSets taking the means of each variable for each activity and each subject, after grouped by subject and activity_name and export finalDataSets into TidyData.txt file.(STEP: 5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject.)
 - Write finalDataSets into `TidyData.txt` file.
