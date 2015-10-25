prepareData <- function () {
  
  # This function prepares the two data sets for the project as follows
  # 1 - Downloads the zipped data from the URL
  # 2 - Unzips it to the current working directory
  # 3 - Reads the accelerometer and gyro data from the .txt files
  # 4 - Combines the training and test data files into one data frame
  # 5 - Names the columns to make a full set of test and training data
  # 6 - Creates a data set of only mean and standard deviation columns
  # 7 - Renames the second data set columns to be more easily readable
  
  setwd("~/")
  
  # Download the data
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "~/HARData.zip")
  
  # Unzip
  unzip("~/HARData.zip")
  
  # Read the data
  subtrain <- read.table("~/UCI HAR Dataset/train/subject_train.txt")  # training subject
  ytrain <- read.table("~/UCI HAR Dataset/train/y_train.txt")          # training activity
  xtrain <- read.table("~/UCI HAR Dataset/train/X_train.txt")          # training features
  subtest <- read.table("~/UCI HAR Dataset/test/subject_test.txt")     # test subject
  ytest <- read.table("~/UCI HAR Dataset/test/y_test.txt")             # test activity
  xtest <- read.table("~/UCI HAR Dataset/test/X_test.txt")             # test features
  features <- read.table("~/UCI HAR Dataset/features.txt")             # feature list
  
  # Make a vector of feature names as characters with which to rename the feature columns
  featurenames <- as.character(features[, 2])
  
  # Combine the training and test data for each of the 3 types of data
  subAll <- rbind(subtrain, subtest)
  yAll <- rbind(ytrain, ytest)
  xAll <- rbind(xtrain, xtest)
  
  # Rename the data frame columns
  names(subAll) <- c("Subject")
  names(yAll) <- c("Activity")
  names(xAll) <- featurenames
  
  # Find the mean and std columns
  datacols <- grep("mean|std", featurenames, ignore.case = TRUE)
  colnames <- featurenames[datacols]
  
  # Rename the data column names to be more easily readable
  colnames <- gsub("\\-","", colnames)
  colnames <- gsub("\\(","", colnames)
  colnames <- gsub("\\)","", colnames)
  colnames <- gsub("mean","Mean", colnames)
  colnames <- gsub("std","StdDev", colnames)
  colnames <- gsub("Acc","Accelerometer", colnames)
  colnames <- gsub("Gyro","Gyroscope", colnames)
  colnames <- gsub("angle","Angle", colnames)
  colnames <- gsub("fBody","FrequencyBody", colnames)
  colnames <- gsub("tBody","TimeBody", colnames)
  colnames <- gsub("tGravity","TimeGravity", colnames)
  colnames <- gsub("gravity","Gravity", colnames)
  colnames <- gsub("Mag","Magnitude", colnames)
  colnames <- gsub("BodyBody","Body", colnames)
  
  
  # Replace the Activity codes with the activity
  yAll[, 1] <- gsub(1, "WALKING", yAll[, 1])
  yAll[, 1] <- gsub(2, "WALKING_UPSTAIRS", yAll[, 1])
  yAll[, 1] <- gsub(3, "WALKING_DOWNSTAIRS", yAll[, 1])
  yAll[, 1] <- gsub(4, "SITTING", yAll[, 1])
  yAll[, 1] <- gsub(5, "STANDING", yAll[, 1])
  yAll[, 1] <- gsub(6, "LAYING", yAll[, 1])
  
  # Subset the features table to get only the mean and std columns
  meanStdData <- xAll[, datacols]
  
  # Add the modified column names to the mean and std data subset
  names(meanStdData) <- colnames
  
  # Combine the 3 data sets to make the full data set
  data <- cbind(subAll, yAll, meanStdData)
  
  # Make a data frame of means per Feature per Subject and Activity
  means <- aggregate(. ~ Subject + Activity,data = data,FUN=mean)
  
  # Rename the means table columns
  meanCols <- names(means)
  meanCols <- paste0("Mean", meanCols)
  meanCols[1:2] <- c("Subject", "Activity")
  names(means) <- meanCols
  
  # Export the new data sets as .CSV
  write.table(means, "~/HARMeans.txt", row.name = FALSE)
  
  # Function end
  
<<<<<<< HEAD
}
=======
}
>>>>>>> origin/master
