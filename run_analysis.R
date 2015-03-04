# Run_Analysis.R

library(dplyr)

# read Test dataset
x<-read.table("UCI HAR Dataset/test//X_test.txt", stringsAsFactors=FALSE, fill=TRUE, strip.white=TRUE)
y<-read.table("UCI HAR Dataset/test//y_test.txt", stringsAsFactors=FALSE, fill=TRUE, strip.white=TRUE)
subject<-read.table("UCI HAR Dataset/test//subject_test.txt", stringsAsFactors=FALSE, fill=TRUE, strip.white=TRUE)

test<-cbind(subject, y, x)

# read Train dataset
x<-read.table("UCI HAR Dataset/train//X_train.txt", stringsAsFactors=FALSE, fill=TRUE, strip.white=TRUE)
y<-read.table("UCI HAR Dataset/train//y_train.txt", stringsAsFactors=FALSE, fill=TRUE, strip.white=TRUE)
subject<-read.table("UCI HAR Dataset/train//subject_train.txt", stringsAsFactors=FALSE, fill=TRUE, strip.white=TRUE)

train<-cbind(subject, y, x)

# Remove unwanted datasets from memory
rm(x)
rm(y)
rm(subject)

# Combine Test and Train datasets

data<-rbind(train, test)

# Read features.txt for variable names

features<-read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE, fill=TRUE, strip.white=TRUE, col.names=c("id","name"))

features$name<-gsub("\\(|\\)","",features$name)
features$name<-gsub("\\,","-",features$name)

colnames(data)[1]<-c("subject")
colnames(data)[2]<-c("activityid")
colnames(data)[3:563]<-features$name

activity<-read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE, fill=TRUE, strip.white=TRUE, col.names=c("id","activity"))

data<-left_join(data, activity, by=c("activityid"="id"))

data<-tbl_df(data)

subdata<-select(data, 1,564, contains("mean"), contains("std"))

subdata %>% group_by(activity, subject) %>% 
  summarise_each(funs(mean)) %>%
  write.table("tidydata.txt",row.name=FALSE)

  
