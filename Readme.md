This is the project Assignment for Getting and Cleaning Data Course
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.  

The data used in this project is from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This project assignment is to create run_analysis R which does the following: 

1. Merges the Y_test.txt and X_test.txt into one dataset
2. Merges the Y_train.txt and X_train.txt into one dataset
3. Combines rows of these two dataset into one datset called "Data"
4. Extracts only the measurements on the mean and standard deviation for each measurement. 
5. Appropriately labels the data set with descriptive variable names which are "WALKING", 
   "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING"
6. Creates a second, independent tidy data set with the average of each variable for each activity 
   and each subject and export to "Data_avg.txt"

Also the Code Book for Data_avg.txt is in "CodeBook.md"
