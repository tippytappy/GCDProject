# README

***

This repository holds an R script which downloads and transforms the Human Activity Recognition data, to produce a tidy data set of means per subject per activity.

All of the required transformations are performed by the run_analysis.R script. A single .txt file is produced, using the write.table function:

```{r, eval = FALSE}
write.table(means, "~/HARMeans.txt", row.name = FALSE)
```


The file can be loaded using read.table(), e.g:

```{r, eval = FALSE}
read.table("~/HARMeans.txt", header = TRUE)
```


***

#### Source Data:
Human Activity Recognition Using Smartphones Dataset Version 1.0
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

* 3 files each for training and test:
    + A 561-feature vector with time and frequency domain variables 
    + Activity code vector
    + Subject ID vector
* Information about the variables used on the feature vector
* Feature list
* Activity labels

*Note: Features are normalized and bounded within [-1,1]*

Detailed information about the features is available below.  

***

#### Background
* Human activity recognition using smartphones
* Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
* 30 volunteers (subjects), each wearing a smartphone
* Each subject performed six activities; WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
* captured 3-axial linear acceleration and 3-axial angular velocity measurements
* a vector of features was obtained by calculating variables from the time and frequency domain
dataset randomly partitioned into two data sets
  + training (70%)
  + test (30%)
  
***

#### Detailed Feature Notes 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'Time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. ('Frequency...' indicates frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean
