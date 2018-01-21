# PROJECT DATA
## Human Activity Recognition Using Smartphones Data Set 
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Files used
File | Description
------------ | -------------
`features.txt` | Feature labels
 `activity_labels.txt` | Activity labels
 `X_train.txt`, `y_train.txt`, `subject_train.txt` | Training set
 `X_test.txt`, `y_test.txt`, `subject_test.txt` | Test set


# SOURCE CODE
Source code file is `run_analysis.R`


# OUTPUT DATA TIDY SET
Average of each variable for each activity and each subject.
See file `secondtidyset.txt`  after running the source code
  ```
  source("run_analysis.R")
  ```
## Specific mean and standard deviation measurement variables:
* TimeBodyAccelerometerMeanX
* TimeBodyAccelerometerMeanY
* TimeBodyAccelerometerMeanZ
* TimeBodyAccelerometerStdX
* TimeBodyAccelerometerStdY
* TimeBodyAccelerometerStdZ
* TimeGravityAccelerometerMeanX
* TimeGravityAccelerometerMeanY
* TimeGravityAccelerometerMeanZ
* TimeGravityAccelerometerStdX
* TimeGravityAccelerometerStdY
* TimeGravityAccelerometerStdZ
* TimeBodyAccelerometerJerkMeanX
* TimeBodyAccelerometerJerkMeanY
* TimeBodyAccelerometerJerkMeanZ
* TimeBodyAccelerometerJerkStdX
* TimeBodyAccelerometerJerkStdY
* TimeBodyAccelerometerJerkStdZ
* TimeBodyGyroscopeMeanX
* TimeBodyGyroscopeMeanY
* TimeBodyGyroscopeMeanZ
* TimeBodyGyroscopeStdX
* TimeBodyGyroscopeStdY
* TimeBodyGyroscopeStdZ
* TimeBodyGyroscopeJerkMeanX
* TimeBodyGyroscopeJerkMeanY
* TimeBodyGyroscopeJerkMeanZ
* TimeBodyGyroscopeJerkStdX
* TimeBodyGyroscopeJerkStdY
* TimeBodyGyroscopeJerkStdZ
* TimeBodyAccelerometerMagnitudeMean
* TimeBodyAccelerometerMagnitudeStd
* TimeGravityAccelerometerMagnitudeMean
* TimeGravityAccelerometerMagnitudeStd
* TimeBodyAccelerometerJerkMagnitudeMean
* TimeBodyAccelerometerJerkMagnitudeStd
* TimeBodyGyroscopeMagnitudeMean
* TimeBodyGyroscopeMagnitudeStd
* TimeBodyGyroscopeJerkMagnitudeMean
* TimeBodyGyroscopeJerkMagnitudeStd
* FrequencyBodyAccelerometerMeanX
* FrequencyBodyAccelerometerMeanY
* FrequencyBodyAccelerometerMeanZ
* FrequencyBodyAccelerometerStdX
* FrequencyBodyAccelerometerStdY
* FrequencyBodyAccelerometerStdZ
* FrequencyBodyAccelerometerJerkMeanX
* FrequencyBodyAccelerometerJerkMeanY
* FrequencyBodyAccelerometerJerkMeanZ
* FrequencyBodyAccelerometerJerkStdX
* FrequencyBodyAccelerometerJerkStdY
* FrequencyBodyAccelerometerJerkStdZ
* FrequencyBodyGyroscopeMeanX
* FrequencyBodyGyroscopeMeanY
* FrequencyBodyGyroscopeMeanZ
* FrequencyBodyGyroscopeStdX
* FrequencyBodyGyroscopeStdY
* FrequencyBodyGyroscopeStdZ
* FrequencyBodyAccelerometerMagnitudeMean
* FrequencyBodyAccelerometerMagnitudeStd
* FrequencyBodyAccelerometerJerkMagnitudeMean
* FrequencyBodyAccelerometerJerkMagnitudeStd
* FrequencyBodyGyroscopeMagnitudeMean
* FrequencyBodyGyroscopeMagnitudeStd
* FrequencyBodyGyroscopeJerkMagnitudeMean
* FrequencyBodyGyroscopeJerkMagnitudeStd

## Notes
**For descriptive names, the following substitution rules were applied:**
* mean to Mean
* std to Std
* Acc to Accelerometer
* Gyro to Gyroscope
* Mag to Magnitude
* BodyBody to Body
* t to Time
* f to Frequency
