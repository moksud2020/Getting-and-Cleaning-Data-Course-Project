library(dplyr)

# Download data from the url

if(!file.exists("data.zip")){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, "data.zip", method = "curl")
}

# Unzip data from the downloaded zip file

if (!file.exists("data")) { 
  unzip("data.zip")
}

# ------READING ALL DATA FROM DIRECTORY--------


# read features data

features <- read.table("UCI HAR Dataset/features.txt")
colnames(features) <- c("id", "functions")


# read activity labels data
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("activity_id", "activity_name")


# read subject_test.txt
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test) <- c("subject")


# read X_test.txt
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(X_test)<-features$functions

# read y_test.txt
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(y_test) <- c("id")

# read subject_train
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train) <- c("subject")


# read X_train
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(X_train)<-features$functions

# read y_train
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(y_train) <- c("id")

# Step 1. Merges the training and the test sets to create one data set. 
mergedDataX <- rbind(X_train, X_test)

mergedDataY <- rbind(y_train, y_test)

mergedDataSubject <- rbind(subject_train, subject_test)

mergedData <- cbind(mergedDataSubject, mergedDataX, mergedDataY)

# Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.

column_names <- make.names(names=names(mergedData), unique=TRUE, allow_ = TRUE)
names(mergedData) <- column_names
masterDataSets <- mergedData %>% select(subject, id, contains("mean"), contains("std"))

# Step 3. Uses descriptive activity names to name the activities in the data set

masterDataSets$id <- activity_labels[masterDataSets$id, 2]


# Step 4. Appropriately labels the data set with descriptive variable names.

# Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

