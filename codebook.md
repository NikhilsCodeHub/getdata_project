## CodeBook

### Following are the steps to perform the analysis :


1. Load dplyr package as we will be using its functions for final summarization.
2. Load test dataset, its activity data and subject data.
3. Load training dataset, its activity data and subject data.
4. Combine the test and taining datasets into data.
5. Load the features data which will provide us with the column names (561-feature vector).
6. Clean the feature names from any special charaters.
7. Assing the columns to the data.
8. load the activity names data. 
9. Join the activity dataset with data to get activity names for all activity ids in the data.
10. Select only those column with names having "mean" and "std".
11. Use the dplyr package functions to group, summarise and write out tidydataset file.
12. The Tidy Dataset has 181 rows and 75 columns.

### Following are the descriptive variables (column names) for Tidydataset :

Sr Nr | Feature
---|---
1|activity 
2|subject 
3|tBodyAcc-mean-X 
4|tBodyAcc-mean-Y 
5|tBodyAcc-mean-Z 
6|tGravityAcc-mean-X 
7|tGravityAcc-mean-Y 
8|tGravityAcc-mean-Z 
9|tBodyAccJerk-mean-X 
10|tBodyAccJerk-mean-Y 
11|tBodyAccJerk-mean-Z 
12|tBodyGyro-mean-X 
13|tBodyGyro-mean-Y 
14|tBodyGyro-mean-Z 
15|tBodyGyroJerk-mean-X 
16|tBodyGyroJerk-mean-Y 
17|tBodyGyroJerk-mean-Z 
18|tBodyAccMag-mean 
19|tGravityAccMag-mean 
20|tBodyAccJerkMag-mean 
21|tBodyGyroMag-mean 
22|tBodyGyroJerkMag-mean 
23|fBodyAcc-mean-X 
24|fBodyAcc-mean-Y 
25|fBodyAcc-mean-Z 
26|fBodyAccJerk-mean-X 
27|fBodyAccJerk-mean-Y 
28|fBodyAccJerk-mean-Z 
29|fBodyGyro-mean-X 
30|fBodyGyro-mean-Y 
31|fBodyGyro-mean-Z 
32|fBodyAccMag-mean 
33|fBodyBodyAccJerkMag-mean 
34|fBodyBodyGyroMag-mean 
35|fBodyBodyGyroJerkMag-mean 
36|angletBodyAccMean-gravity 
37|angletBodyAccJerkMean-gravityMean 
38|angletBodyGyroMean-gravityMean 
39|angletBodyGyroJerkMean-gravityMean 
40|angleX-gravityMean 
41|angleY-gravityMean 
42|angleZ-gravityMean 
43|tBodyAcc-std-X 
44|tBodyAcc-std-Y 
45|tBodyAcc-std-Z 
46|tGravityAcc-std-X 
47|tGravityAcc-std-Y 
48|tGravityAcc-std-Z 
49|tBodyAccJerk-std-X 
50|tBodyAccJerk-std-Y 
51|tBodyAccJerk-std-Z 
52|tBodyGyro-std-X 
53|tBodyGyro-std-Y 
54|tBodyGyro-std-Z 
55|tBodyGyroJerk-std-X 
56|tBodyGyroJerk-std-Y 
57|tBodyGyroJerk-std-Z 
58|tBodyAccMag-std 
59|tGravityAccMag-std 
60|tBodyAccJerkMag-std 
61|tBodyGyroMag-std 
62|tBodyGyroJerkMag-std 
63|fBodyAcc-std-X 
64|fBodyAcc-std-Y 
65|fBodyAcc-std-Z 
66|fBodyAccJerk-std-X 
67|fBodyAccJerk-std-Y 
68|fBodyAccJerk-std-Z 
69|fBodyGyro-std-X 
70|fBodyGyro-std-Y 
71|fBodyGyro-std-Z 
72|fBodyAccMag-std 
73|fBodyBodyAccJerkMag-std 
74|fBodyBodyGyroMag-std 
75|fBodyBodyGyroJerkMag-std 



### The Acitivity lables are as follows :
Activity ID | Activity Name
---|---
1 |WALKING
2 |WALKING_UPSTAIRS
3 |WALKING_DOWNSTAIRS
4 |SITTING
5 |STANDING
6 |LAYING


#### **subject** - Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


