library(reshape2)


# Read test and train datasets from the files in the working dir

x_test_full <- read.table("X_test.txt")
x_train_full <- read.table("X_train.txt")

# Select only the columns that have variables showing mean and standard deviation values
# Define the variable names

selectedCols <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543)
selectedColNames <- c("tBodyAccMeanXaxis","tBodyAccMeanYaxis","tBodyAccMeanZaxis","tBodyAccStdDevXaxis","tBodyAccStdDevYaxis","tBodyAccStdDevZaxis","tGravityAccMeanXaxis","tGravityAccMeanYaxis","tGravityAccMeanZaxis","tGravityAccStdDevXaxis","tGravityAccStdDevYaxis","tGravityAccStdDevZaxis","tBodyAccJerkMeanXaxis","tBodyAccJerkMeanYaxis","tBodyAccJerkMeanZaxis","tBodyAccJerkStdDevXaxis","tBodyAccJerkStdDevYaxis","tBodyAccJerkStdDevZaxis","tBodyGyroMeanXaxis","tBodyGyroMeanYaxis","tBodyGyroMeanZaxis","tBodyGyroStdDevXaxis","tBodyGyroStdDevYaxis","tBodyGyroStdDevZaxis","tBodyGyroJerkMeanXaxis","tBodyGyroJerkMeanYaxis","tBodyGyroJerkMeanZaxis","tBodyGyroJerkStdDevXaxis","tBodyGyroJerkStdDevYaxis","tBodyGyroJerkStdDevZaxis","tBodyAccMagMean","tBodyAccMagStdDev","tGravityAccMagMean","tGravityAccMagStdDev","tBodyAccJerkMagMean","tBodyAccJerkMagStdDev","tBodyGyroMagMean","tBodyGyroMagStdDev","tBodyGyroJerkMagMean","tBodyGyroJerkMagStdDev","fBodyAccMeanXaxis","fBodyAccMeanYaxis","fBodyAccMeanZaxis","fBodyAccStdDevXaxis","fBodyAccStdDevYaxis","fBodyAccStdDevZaxis","fBodyAccJerkMeanXaxis","fBodyAccJerkMeanYaxis","fBodyAccJerkMeanZaxis","fBodyAccJerkStdDevXaxis","fBodyAccJerkStdDevYaxis","fBodyAccJerkStdDevZaxis","fBodyGyroMeanXaxis","fBodyGyroMeanYaxis","fBodyGyroMeanZaxis","fBodyGyroStdDevXaxis","fBodyGyroStdDevYaxis","fBodyGyroStdDevZaxis","fBodyAccMagMean","fBodyAccMagStdDev","fBodyBodyAccJerkMagMean","fBodyBodyAccJerkMagStdDev","fBodyBodyGyroMagMean","fBodyBodyGyroMagStdDev","fBodyBodyGyroJerkMagMean","fBodyBodyGyroJerkMagStdDev")

x_test <- x_test_full[selectedCols]
colnames(x_test) <- selectedColNames

x_train <- x_train_full[selectedCols]
colnames(x_train) <- selectedColNames

# Read the activity tables for the test and train sets

y_test <- read.table("y_test.txt")
colnames(y_test) <- "Activity"

y_train <- read.table("y_train.txt")
colnames(y_train) <- "Activity"

# Read the subject tables for the test and train sets

subject_test <- read.table("subject_test.txt")
colnames(subject_test) <- "Subject"

subject_train <- read.table("subject_train.txt")
colnames(subject_train) <- "Subject"

# Add the following columns to the test and train X data

# Activity

x_test <- cbind(x_test,y_test)

x_train <- cbind(x_train,y_train)


# Subject

x_test <- cbind(x_test,subject_test)

x_train <- cbind(x_train,subject_train)


# Merge the data from the train and test sets

x_data <- rbind(x_train,x_test)


# Replace activity identifiers by their names


activity_labels <- read.table("activity_labels.txt")
colnames(activity_labels) <- c("id","ActivityName")

x_data <- merge(x_data,activity_labels,by.x="Activity",by.y="id")

x_data$Activity <- NULL


# Calculate the mean value for each variable for each subject and each type of activity

dataMelt <- melt(x_data,id=c("Subject","ActivityName"))
Means <- dcast(dataMelt, Subject + ActivityName ~ variable, mean)

# Write to text file

write.table(Means,file="tidyData.txt", row.names=FALSE)
