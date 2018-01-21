# Getting-and-Cleaning-Data-Course-Proj
Peer-graded Assignment: Getting and Cleaning Data Course Project

## Instructions:
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set.

## Project Data: 
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## List of Files:
File | Description
------------ | -------------
`README.MD` | This file; Explains how all of the scripts work and how they are connected.
`CodeBook.md` | Code book; Describes the variables, the data, and any transformations or work that was performed to clean up the data called 
`run_analysis.R` | R script; Contains all the code to perform the analyses described in the 5 steps.  can be launched in RStudio by just importing the file.
`secondtidyset.txt` | Output file; Second, independent tidy data set with the average of each variable for each activity and each subject

`run_analysis.R` does the following:
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

