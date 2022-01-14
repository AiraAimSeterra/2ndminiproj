# 2ndminiproj
## Problem 1 Explanation

* Line 1 and 2: Installs packages "data.table" and "reshape2"
* Line 4 and 5: Loads packages "data.table" and "reshape2"
* Line 7: Reads in table format the file "activity_labels.txt" and creates vector "activity_labels"
* Line 9: Reads in table format the file "feautures.txt" and creates vector "features"
* Line 11: Creates a vector for the extraction of mean and standard deviation of each measurement
* Line 13-15: Reads in table format the files "X_test.txt", "y_test.txt", and "subject_test.txt", and creates data frames "X_test", "y_test", and "subject_test", respectively
* Line 17: Using the column names in "features" to set the names of the data frame "X_test"
* Line 19: Extracts the mean and standard deviation measurements of each measurement in X_test
* Line 21 -23: Creates activity labels for "y_test" and "subject_test"
* Line 25: Combines and assigns the previous data frames to a new vector "test_data"
* Line 27: Reads in table format the file "X_train.txt" and creates a data frame "X_train"
* Line 28: Reads in table format the file "y_train.txt" and creates a data frame "y_train"
* Line 29: Reads in table format the file "subject_train.txt" and creates a data frame "subject_train"
* Line 31:Using the column names in "features" to set the names of the data frame "X_train"
* Line 33: Extracts the mean and standard deviation measurements of each measurement in X_train
* Line 35-37: Creates activity labels for "y_train" and "subject_train"
* Line 39: Combines and assigns the previous data frames to a new vector "train_data"
* Line 41: Merges "test_data" and "train_data" and assigns it to data frame "merged_data"
* Line 43-45: Using descriptive variable name to label the data sets
* Line 47: Creates an independent tidy data set with the average of each variable for each activity and each subject and assigns it to data set "UCI_HAR_tidy_data"
* Line 49: Exports  "UCI_HAR_tidy_data" as "UCI_HAR_tidy_data.txt"

