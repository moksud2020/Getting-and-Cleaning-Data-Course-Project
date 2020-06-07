# Code book of Getting and Cleaning Data course project

The main R script file is run_analysis.R for execute and prepare the data for this data repository. It stored the tidy datasets in the TidyData.txt file. 

## Download the dataset

Dataset has downloaded and extracted under the folder called UCI HAR Dataset. The first row of each file contains the names of the variables and the following rows contain the values of these variables.

## List of Variables:
The following variable has created to assign the datasets.

- features variable is assigned by features.txt datasets: The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ..

-	activity_labels variable is assigned by activity_labels.txt datasets : All activities are performed when the corresponding measurements were taken.

-	subject_test variable is assigned by test/subject_test.txt datasets:  All the ID of participant.

-	X_test  variable is assigned by test/X_test.txt datasets:  All the features test data. It includes 2947 rows and 561 columns. 

-	y_test variable is assigned by test/y_test.txt datasets:  All the columns contains test data of activities’ code labels and it has 2947 rows and 1 column.  

-	subject_train variable is assigned by test/subject_train.txt datasets: 7352 rows, 1 column contains train data.

-	x_train  variable is assigned by test/X_train.txt datasets: All the features train data was recorded.

-	y_train  variable is assigned by test/y_train.txt datasets: All the train data of activities’ code labels.

## Transformations
The following process has conducted to perform transformations:

Step 1: Merges the training and the test sets to create one data set. 
The following steps and variables are used to complete the above operation.

-	mergedDataX  variable is created to store the data by merging X_train and X_test using rbind() function

-	mergedDataY variable is created to store the result data by merging y_train and y_test using rbind() function

-	mergedDataSubject variable is  created to store the result dataset by merging subject_train and subject_test using rbind() function.

-	mergedData variable is created to store the result dataset by merging mergedDataSubject, mergedDataX  and mergedDataY using cbind() function

Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
There are some invalid characters in the original column names so the column_names variable is created for forcing unique column names with valid characters, with make.names()  function.
masterDataSets variable is created by selecting columns (subject, id, mean and std) for each measurement from mergedData.

Step 3. Uses descriptive activity names to name the activities in the data set
The id column of the masterDataSets replaced with the activity_name. This is the second column of the activity_labels variable.

Step 4. Appropriately labels the data set with descriptive variable names
The variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to timeDomainBodyAccelerometerMeanX), using the following set of rules:
o	id column in masterDataSets renamed into activity_name
o	The initial f and t were expanded to Frequency and Time respectively.
o	Acc, Gyro, Mag, Freq, mean, std and BodyBody were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, STD and Body respectively.

finalDataSets is created by sumarizing masterDataSets taking the means of each variable for each activity and each subject, after grouped by subject and activity_name and export finalDataSets into TidyData.txt file.

The collection of the source data and the transformations listed above were implemented by the run_analysis.R R script (see README.md file for usage instructions).
