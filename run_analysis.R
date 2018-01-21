#   LOAD USEFUL R PACKAGES
    library(plyr);library(dplyr);library(tidyr);library(knitr);library(data.table)

# 0. DOWNLOAD AND UNZIP THE PROJECT DATA
  # 0.0. Create /data directory:
    if (!file.exists("./data")){
      dir.create("./data")
    }

  # 0.0. Download the data for the project at url https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip:
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url, destfile="./data/ProjectData.zip")

  # 0.2. Unzip the project data to /data directory:
    unzip(zipfile="./data/ProjectData.zip",exdir="./data")


# 1. MERGE THE TRAINING AND TEST SETS TO CREATE ONE DATA SET
  # 1.1. Read the train sets:
    x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header=FALSE)
    y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header=FALSE)
    subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header=FALSE)
  
  # 1.2. Read the test sets:
    x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header=FALSE)
    y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header=FALSE)
    subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",header=FALSE)
  
  # 1.3. Read the feature labels:
    feature_labels <- read.table('./data/UCI HAR Dataset/features.txt', header=FALSE)
  
  # 1.4. Read activity labels:
    activity_labels = read.table('./data/UCI HAR Dataset/activity_labels.txt',header=FALSE)
  
  # 1.5. Assign column names: 
    colnames(x_train) <- feature_labels[,2] 
    colnames(y_train) <-"Activity"
    colnames(subject_train) <- "SubjectId"
        
    colnames(x_test) <- feature_labels[,2] 
    colnames(y_test) <- "Activity"
    colnames(subject_test) <- "SubjectId"
          
    colnames(feature_labels) <- c('Index','FeatureName')
    colnames(activity_labels) <- c('Activity','ActivityType')
    
  
  # 1.6. Merge data into one set
    merge_train <- cbind(subject_train, y_train, x_train)
    merge_test <- cbind(subject_test, y_test, x_test)
    merge_train_test <- rbind(merge_train, merge_test)

# 2. EXTRACT ONLY THE MEASUREMENT ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT
  # 2.2. Create vector for defining ID, mean, and standard deviation
    mean_and_std<-feature_labels$FeatureName[grep("(mean|std)\\(\\)", feature_labels$FeatureName)]
    measurement_labels<-c("SubjectId", "Activity", as.character(mean_and_std))
    
  # 2.3. Get subset for merged set
    working_data<-subset(merge_train_test,select=measurement_labels)
    working_data$Activity<-factor(working_data$Activity,labels=activity_labels[,2])
  
# 3. USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET
# 4. APPROPRIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES
    names(working_data)<-gsub("[-()]", "", names(working_data))
    names(working_data)<-gsub("mean", "Mean", names(working_data))
    names(working_data)<-gsub("std", "Std", names(working_data))
    names(working_data)<-gsub("Acc", "Accelerometer", names(working_data))
    names(working_data)<-gsub("Gyro", "Gyroscope", names(working_data))
    names(working_data)<-gsub("Mag", "Magnitude", names(working_data))
    names(working_data)<-gsub("BodyBody", "Body", names(working_data))
    names(working_data)<-gsub("^t", "Time", names(working_data))
    names(working_data)<-gsub("^f", "Frequency", names(working_data))

# 5. FROM THE DATA SET IN 4, CREATE A SECOND INDEPENDENTLY TIDY SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT
  # 5.1. Make the second independently tidy set
    second_tidy_set <- aggregate(. ~SubjectId + Activity, working_data, mean)
    second_tidy_set <- second_tidy_set[order(second_tidy_set$SubjectId, second_tidy_set$Activity),]

  # 5.2. Write to file
    write.table(second_tidy_set, "secondtidyset.txt", row.name=FALSE, quote = FALSE, sep = '\t')