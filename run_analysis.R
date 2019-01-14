library(dplyr)

filename <- "Project_data.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
        download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}



#prepare the labels for the dataset

#read activities
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities <- as.character(activities[,2])
#read features and extract and tidy names containing mean or standard deviation
features <- read.table("UCI HAR Dataset/features.txt")
features <- as.character(features[,2])
tup <- grep("*mean*|*std*",features )
varnames <- features[tup]
varnames <- gsub("std", " Std ", varnames)
varnames <- gsub("mean", " Mean ", varnames)
varnames <- gsub("[-()-]", "", varnames)
varnames <- gsub("^f", "frequency.domain ", varnames)
varnames <- gsub("^t", "time.domain ", varnames)
varnames <- gsub("Acc", " Accelerometer ", varnames)
varnames <- gsub("Gyro", " Gyroscope ", varnames)
varnames <- gsub("Mag", " Magnitude ", varnames)
varnames <- gsub("Freq", " Frequency ", varnames)
varnames <- gsub("BodyBody", "Body", varnames)
#create set of names for columns
col.names <- c("Subject", "Activities",varnames)

#read train values
trainvalues <- read.table("UCI HAR Dataset/train/X_train.txt")
trainvalues <- trainvalues[,tup]
trainactiv <- read.table("UCI HAR Dataset/train/y_train.txt")
#substitute names of activities for numbers
for (i in c(1:6)) {
        trainactiv[,1] <- gsub(i,activities[i], trainactiv[,1])
}
trainsubjects <- read.table("C:/rdata/UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainsubjects,trainactiv,trainvalues)

#read test values
testvalues <- read.table("UCI HAR Dataset/test/X_test.txt")
testvalues <- testvalues[,tup]
testactiv <- read.table("UCI HAR Dataset/test/y_test.txt")
#substitute names of activities for numbers
for (i in c(1:6)) {
        testactiv[,1] <- gsub(i,activities[i], testactiv[,1])
}
testsubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test<- cbind(testsubjects, testactiv, testvalues)
#merge train and test into one dataset and label variables appriopriately
result <- rbind(train,test)
colnames(result) <- col.names


#take means of variables in the merged dataset for each subject and activity
tidydata <- aggregate(.~ Subject + Activities, data = result, FUN = mean)
tidydata <- tidydata[order(tidydata$Subject,tidydata$Activities),]

#create a txt file with the tidy dataset
write.table(tidydata,"tidydata.txt", row.names = FALSE, quote = FALSE)


