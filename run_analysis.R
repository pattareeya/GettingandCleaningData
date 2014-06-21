setwd("C:/Coursera/Data Science/Data_Cleaning")
directory <-paste(getwd(),"UCI HAR Dataset", sep = "/")
x_test <- read.table(paste(directory,"test/X_test.txt", sep = "/"))
x_train <- read.table(paste(directory,"train/X_train.txt", sep = "/"))
y_test <- read.table(paste(directory,"test/Y_test.txt", sep = "/"),colClasses = "character")
y_train <- read.table(paste(directory,"train/Y_train.txt", sep = "/"), colClasses = "character")
#1.Merges the training and the test sets to create one data set.
Test <- cbind(y_test,x_test)
Train <- cbind(y_train,x_train)
Data <- rbind(Test,Train)
#2.Extracts only the measurements on the mean and standard deviation
#for each measurement. 
Data_new <- cbind(Data[,1:7], Data[,42:47], Data[,82:87], Data[,122:127],
                  Data[,162:167], Data[,202:203], Data[,215:216],
                  Data[,228:229], Data[,241:242], Data[,254:255],
                  Data[,267:272], Data[,346:351], Data[,425:430],
                  Data[,504:505], Data[,517:518], Data[,530:531],
                  Data[,543:544])

#3.Uses descriptive activity names to name the activities in the data set


for(i in 1:nrow(Data_new)){
    if (Data_new[i,1] == "1"){ Data_new[i,1] <- "WALKING" }
    else if (Data_new[i,1] == "2"){ Data_new[i,1] <- "WALKING_UPSTAIRS" }
    else if (Data_new[i,1] == "3"){ Data_new[i,1] <- "WALKING_DOWNSTAIRS" }
    else if (Data_new[i,1] == "4"){ Data_new[i,1] <- "SITTING" }
    else if (Data_new[i,1] == "5"){ Data_new[i,1] <- "STANDING" }
    else if (Data_new[i,1] == "6"){ Data_new[i,1] <- "LAYING" }
    else    {Data_new[i,1] <- "NA"}
}


#4.Appropriately labels the data set with descriptive variable names.
new_label <- c("activity", 
                "tBodyAcc-mean()-X","tBodyAcc-mean()-Y","tBodyAcc-mean()-Z", 
                "tBodyAcc-std()-X","tBodyAcc-std()-Y","tBodyAcc-std()-Z",
                "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z",
                "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z",
                "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y","tBodyAccJerk-mean()-Z", 
                "tBodyAccJerk-std()-X","tBodyAccJerk-std()-Y","tBodyAccJerk-std()-Z",
                "tBodyGyro-mean()-X","tBodyGyro-mean()-Y","tBodyGyro-mean()-Z", 
                "tBodyGyro-std()-X","tBodyGyro-std()-Y","tBodyGyro-std()-Z",
                "tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y","tBodyGyroJerk-mean()-Z", 
                "tBodyGyroJerk-std()-X","tBodyGyroJerk-std()-Y","tBodyGyroJerk-std()-Z",
                "tBodyAccMag-mean()","tBodyAccMag-std()", 
                "tGravityAccMag-mean()","tGravityAccMag-std()", 
                "tBodyAccJerkMag-mean()","tBodyAccJerkMag-std()", 
                "tBodyGyroMag-mean()","tBodyGyroMag-std()", 
                "tBodyGyroJerkMag-mean()","tBodyGyroJerkMag-std()", 
                "fBodyAcc-mean()-X","fBodyAcc-mean()-Y","fBodyAcc-mean()-Y", 
                "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z",
                "fBodyAccJerk-mean()-X","fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z",
                "fBodyAccJerk-std()-X","fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z",
                "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y","fBodyGyro-mean()-Z", 
                "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z",
                "fBodyAccMag-mean()","fBodyAccMag-std()",
                "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()",
                "fBodyBodyGyroMag-mean()","fBodyBodyGyroMag-std()",
                "fBodyBodyGyroJerkMag-mean()","fBodyBodyGyroJerkMag-std()"        
                )
colnames(Data_new) <- new_label

#5.Creates a second, independent tidy data set with the average of each 
#variable for each activity and each subject. 
Data_avg <- data.frame(lapply(split(Data_new[,2:67], Data_new[,1]), colMeans))
write.table(Data_avg,file = "Data_avg.txt")

