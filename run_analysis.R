library(dplyr)

if(!file.exists("data.zip")){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, "data.zip", method = "curl")
}

if (!file.exists("data")) { 
  unzip("data.zip")
}

# ------READING ALL DATA FROM DIRECTORY--------


# read features data

features <- read.table("UCI HAR Dataset/features.txt")

# read activity labels data
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# read subject_test.txt
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# read X_test.txt
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

# read y_test.txt
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# read subject_train
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# read X_train
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

# read y_train
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

