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

