
## Checks if required packages are available and installed, if not they will be installed
## dplyr 0.4.1, reshape2 1.4.1, plyr 1.8.1
if("plyr" %in% rownames(installed.packages()) == FALSE) {install.packages("plyr")}
if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")}
if("reshape2" %in% rownames(installed.packages()) == FALSE) {install.packages("reshape2")}

library(plyr)
library(dplyr)
library(reshape2)


##Reading the files for the "test" data set
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",quote="\"")

## Read the file for the "features"
features <- read.table("UCI HAR Dataset/features.txt",
                       quote="\"")

## Rename the variables names in "X_test" to have features names
colnames(X_test) <- as.character(features[[2]])

##change the numbers in y_test for the names of the activities
activities_test <- mapvalues(y_test[[1]], from= c(1,2,3,4,5,6), to= c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                                             "SITTING", "STANDING", "LAYING"))

## Convert to data frame to be able to use it with "cbind"
actidf_test <- as.data.frame(activities_test)  

## merging the files of the "test" data set using cbind
test_complete <- cbind(X_test, actidf_test, subject_test)
## Renaming columns to match train data set and be able to merge
colnames(test_complete)[562] <- "activity"
colnames(test_complete)[563] <- "subject"

##reading the files for the "train" data set
x_train <- read.table("UCI HAR Dataset/train/X_train.txt",quote="\"")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",quote="\"")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",quote="\"")

## Rename the variables names in "x_train" to have features names
colnames(x_train) <- as.character(features[[2]])

##change the numbers in y_train for the names of the activities
activities_train <- mapvalues(y_train[[1]], from= c(1,2,3,4,5,6), to= c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                                                                     "SITTING", "STANDING", "LAYING"))
## Convert to data frame to be able to use it with "cbind"
actidf_train <- as.data.frame(activities_train)

##Merging the files in the "train" data set using cbind
train_complete <- cbind(x_train, actidf_train, subject_train)
## Renaming columns to match test data set and be able to merge
colnames(train_complete)[562] <- "activity"
colnames(train_complete)[563] <- "subject"

##Merging the "train_complete" and "test_complete" using rbind to have a unified data set
merged_data <- rbind(test_complete, train_complete)



## The strings to select the asked variables
lista <- c("mean()", "std()")

## Create a vector with the names of the variables with "mean" and "std"
featuresvector <- as.character(features[[2]])
featureslist <- featuresvector[grep(paste(lista, collapse="|"),featuresvector)]
## Remove from the vector the variables with "meanFreq" and leave only "mean" and "std"
meanFreqVars <- featureslist[grep ("meanFreq", featureslist)]
featureslist <- featureslist[! featureslist %in% meanFreqVars]
## Add to the list the names of the variables "activity" and "subject"
featureslist <- c(featureslist, "activity", "subject")

## Create the final data frame with the "test" and "train" data sets and only the asked variables
finalmerge <- merged_data[, featureslist]

## Melt the "finalmerge" data frame to re-cast it 
mergemelt <- melt(finalmerge, id=c("subject", "activity"))

## Re-cast the data using "subject" and "activity" and passing the function "mean"
## to obtain the average of each variable for each activity and each subject.
finalAnswer <- dcast(mergemelt, activity+subject ~ variable, mean)
finalAnswer <- data.frame(finalAnswer)

## clean the column names and remove dots "."
cleannames <- unlist(lapply(colnames(finalAnswer), function(x) gsub("\\.", "", x)))
colnames(finalAnswer) <- cleannames

## Write the data set to file
write.table(finalAnswer, file="finalFile.txt", row.names=FALSE)
