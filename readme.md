
Getting and Cleaning Data - Course Project
------------------------------------------

The data gathered from the course website represent data collected from the accelerometers from the Samsung Galaxy S II smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The datafile provided contains the following structure : UCI HAR Dataset
|--activity_labels.txt
|--features.txt
|--features_info.txt
|--README.txt
|--test
|--Inertial Signals
|------body_acc_x_test.txt
|------body_acc_y_test.txt
|------body_acc_z_test.txt
|------body_gyro_x_test.txt
|------body_gyro_y_test.txt
|------body_gyro_z_test.txt
|------total_acc_x_test.txt
|------total_acc_y_test.txt
|------total_acc_z_test.txt
|----subject_test.txt
|----X_test.txt
|----y_test.txt
|--train
|--Inertial Signals
|------body_acc_x_train.txt
|------body_acc_y_train.txt
|------body_acc_z_train.txt
|------body_gyro_x_train.txt
|------body_gyro_y_train.txt
|------body_gyro_z_train.txt
|------total_acc_x_train.txt
|------total_acc_y_train.txt
|------total_acc_z_train.txt
|----subject_train.txt
|----X_train.txt
|----y_train.txt


Below is the description of various files used in our analysis :
'README.md' - This file.

'CodeBook.md': Describes the variables in the dataset and the analysis performed to merge the test and train data into single dataset.

'features_info.txt': Contains information about the variables obtained after post processing the sensor signals.

'features.txt': List of all variables or features that correspond to given data. This is a 561-feature numeric vector.

'activity_labels.txt': identifies activity name corresponding to its activityID in test and train dataset.

'train/X_train.txt': Training set. A 7352x561 dataset

'train/y_train.txt': Activity labels for Training dataset.

'test/X_test.txt': Test set. A 2947x561 dataset

'test/y_test.txt': Activity labels for Test dataset.

'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


