library(dplyr)

if(!file.exists("data.zip")){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, "data.zip", method = "curl")
}

if (!file.exists("data")) { 
  unzip("data.zip")
}