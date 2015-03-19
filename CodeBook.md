---
title: "CodeBook.md"
author: "Rafael Serrano"
date: "Tuesday, March 17, 2015"
output: html_document
---

Getting and Cleaning Data Course Project
========================================
The goal of this project is to prepare a set of tidy data that can be used for further analysis. 
Written by: Rafael Antonio Serrano Recinos


Collection of the raw data
--------------------------
The raw data for this project was obtained using the following url: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
The data was recorded from a group of 30 volunteers doing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.


Guide to create the tidy data file
----------------------------------

 1. Download the raw data from URL provided above.
 2. Unpack the .zip file in your working directory.
 3. Required packages: dplyr 0.4.1, reshape2 1.4.1, plyr 1.8.1
 4. Run the run_analysis.R script available in this repository.
 5. The output file "finalFile.txt" will be available in your working directory


 
 Description of the variables in the finalAnswer.txt file
------------------------------------------------------

The data set contains 180 observations and 68 variables.



Column 1  
Variable Name:		activity  
Type: character -- Categorical  
Meaning: Name of the activity for the observation.  
Values:   
WALKING  
WALKING_UPSTAIRS  
WALKING_DOWNSTAIRS   
SITTING  
STANDING  
LAYING  

-----------------------------
Column 2  
Variable Name:		subject  
Type: int -- Categorical  
Meaning: Identifier for the subject  
Values: [1,30]  

-----------------------------
Column 3  
Variable Name:		tBodyAccmeanX  
Type: num  -- Continuous  
Meaning: time-body-acceleration-mean-X.  
Units:  The average for all the measurements for the subject and activity in the X axis.  
Values: [-1,1]  

-----------------------------
Column 4  
Variable Name:		tBodyAccmeanY  
Type: num  -- Continuous  
Meaning: time-body-acceleration-mean-Y.  
Units:  The average for all the measurements for the subject and activity in the Y axis.  
Values: [-1,1]  

-----------------------------
Column 5  
Variable Name:		tBodyAccmeanZ  
Type: num  -- Continuous  
Meaning: time-body-acceleration-mean-Z.  
Units:  The average for all the measurements for the subject and activity in the Z axis.  
Values: [-1,1]  

-----------------------------
Column 6  
Variable Name:		tBodyAccstdX  
Type: num  -- Continuous  
Meaning: time-body-acceleration-standardDeviation-X.  
Units:  The average for all the measurements for the subject and activity in the x axis.  
Values: [-1,1]  

-----------------------------
Column 7  
Variable Name:		tBodyAccstdY  
Type: num  -- Continuous  
Meaning: time-body-acceleration-standardDeviation-Y.  
Units:  The average for all the measurements for the subject and activity in the y axis.  
Values: [-1,1]  

-----------------------------
Column 8  
Variable Name:		tBodyAccstdZ  
Type: num  -- Continuous  
Meaning: time-body-acceleration-standardDeviation-Z.  
Units:  The average for all the measurements for the subject and activity in the z axis.  
Values: [-1,1]  

-----------------------------
Column 9  
Variable Name:		tGravityAccmeanX  
Type: num  -- Continuous  
Meaning: time-gravity-acceleration-mean-X.  
Units:  The average for all the measurements for the subject and activity in the x axis.  
Values: [-1,1]  

-----------------------------
Column 10  
Variable Name:		tGravityAccmeanY  
Type: num  -- Continuous  
Meaning: time-gravity-acceleration-mean-Y.  
Units:  The average for all the measurements for the subject and activity in the y axis.  
Values: [-1,1]  

-----------------------------
Column 11  
Variable Name:		tGravityAccmeanZ  
Type: num  -- Continuous  
Meaning: time-gravity-acceleration-mean-Z.  
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1] 

-----------------------------
Column 12  
Variable Name:		tGravityAccstdX  
Type: num  -- Continuous  
Meaning: time-gravity-acceleration-standardDeviation-X.  
Units:  The average for all the measurements for the subject and activity in the x axis.  
Values: [-1,1]  

-----------------------------
Column 13  
Variable Name:		tGravityAccstdY  
Type: num  -- Continuous  
Meaning: time-gravity-acceleration-standardDeviation-Y.  
Units:  The average for all the measurements for the subject and activity in the y axis.  
Values: [-1,1]  

-----------------------------
Column 14  
Variable Name:		tGravityAccstdZ  
Type: num  -- Continuous  
Meaning: time-gravity-acceleration-standardDeviation-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.  
Values: [-1,1]  

-----------------------------
Column 15  
Variable Name:		tBodyAccJerkmeanX  
Type: num  -- Continuous  
Meaning: time-body-acceleration-jerk-mean-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.  
Values: [-1,1]  

-----------------------------
Column 16  
Variable Name:		tBodyAccJerkmeanY  
Type: num  -- Continuous  
Meaning: time-body-acceleration-jerk-mean-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 17  
Variable Name:		tBodyAccJerkmeanZ  
Type: num  -- Continuous  
Meaning: time-body-acceleration-jerk-mean-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.  
Values: [-1,1]  

-----------------------------
Column 18  
Variable Name:		tBodyAccJerkstdX  
Type: num  -- Continuous  
Meaning: time-body-acceleration-jerk-standardDeviation-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 19  
Variable Name:		tBodyAccJerkstdY  
Type: num  -- Continuous  
Meaning: time-body-acceleration-jerk-standardDeviation-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 20  
Variable Name:		tBodyAccJerkstdZ  
Type: num  -- Continuous  
Meaning: time-body-acceleration-jerk-standardDeviation-Z.  
Units:  The average for all the measurements for the subject and activity in the z axis.  
Values: [-1,1]  

-----------------------------
Column 21  
Variable Name:		tBodyGyromeanX  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-mean-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 22  
Variable Name:		tBodyGyromeanY  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-mean-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 23  
Variable Name:		tBodyGyromeanZ  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-mean-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 24  
Variable Name:		tBodyGyrostdX  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-standardDeviation-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 25  
Variable Name:		tBodyGyrostdY  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-standardDeviation-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 26  
Variable Name:		tBodyGyrostdZ  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-standardDeviation-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 27  
Variable Name:		tBodyGyroJerkmeanX  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-jerk-mean-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 28  
Variable Name:		tBodyGyroJerkmeanY  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-jerk-mean-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 29  
Variable Name:		tBodyGyroJerkmeanZ  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-jerk-mean-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 30  
Variable Name:		tBodyGyroJerkstdX  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-jerk-standardDeviation-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 31  
Variable Name:		tBodyGyroJerkstdY  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-jerk-standardDeviation-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 32  
Variable Name:		tBodyGyroJerkstdZ  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-jerk-standardDeviation-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 33  
Variable Name:		tBodyAccMagmean  
Type: num  -- Continuous  
Meaning: time-body-acceleration-magnitude-mean.   
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 34  
Variable Name:		tBodyAccMagstd  
Type: num  -- Continuous  
Meaning: time-body-acceleration-magnitude-standardDeviation.   
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 35  
Variable Name:		tGravityAccMagmean  
Type: num  -- Continuous  
Meaning: time-gravity-acceleration-magnitude-mean.   
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 36  
Variable Name:		tGravityAccMagstd  
Type: num  -- Continuous  
Meaning: time-gravity-acceleration-magnitude-standardDeviation.   
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 37  
Variable Name:		tBodyAccJerkMagmean  
Type: num  -- Continuous  
Meaning: time-body-acceleration-jerk-magnitude-mean.   
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 38  
Variable Name:		tBodyAccJerkMagstd  
Type: num  -- Continuous  
Meaning: time-body-acceleration-jerk-magnitude-standardDeviation.   
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 39  
Variable Name:		tBodyGyroMagmean  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-magnitude-mean.   
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 40  
Variable Name:		tBodyGyroMagstd  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-magnitude-standardDeviation.   
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 41  
Variable Name:		tBodyGyroJerkMagmean  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-jerk-magnitude-mean.   
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 42  
Variable Name:		tBodyGyroJerkMagstd  
Type: num  -- Continuous  
Meaning: time-body-gyroscope-jerk-magnitude-standardDeviation.   
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 43  
Variable Name:		fBodyAccmeanX  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-mean-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 44  
Variable Name:		fBodyAccmeanY  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-mean-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 45  
Variable Name:		fBodyAccmeanZ  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-mean-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 46  
Variable Name:		fBodyAccstdX  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-standardDeviation-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 47  
Variable Name:		fBodyAccstdY  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-standardDeviation-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 48  
Variable Name:		fBodyAccstdZ  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-standardDeviation-Z.  
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 49  
Variable Name:		fBodyAccJerkmeanX  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-jerk-mean-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 50  
Variable Name:		fBodyAccJerkmeanY  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-jerk-mean-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 51  
Variable Name:		fBodyAccJerkmeanZ  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-jerk-mean-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 52  
Variable Name:		fBodyAccJerkstdX  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-jerk-standardDeviation-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 53  
Variable Name:		fBodyAccJerkstdY  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-jerk-standardDeviation-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 54  
Variable Name:		fBodyAccJerkstdZ  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-jerk-standardDeviation-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 55  
Variable Name:		fBodyGyromeanX  
Type: num  -- Continuous  
Meaning: frequency-body-gyroscope-mean-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 56  
Variable Name:		fBodyGyromeany  
Type: num  -- Continuous  
Meaning: frequency-body-gyroscope-mean-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 57  
Variable Name:		fBodyGyromeanZ  
Type: num  -- Continuous  
Meaning: frequency-body-gyroscope-mean-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 58  
Variable Name:		fBodyGyrostdX  
Type: num  -- Continuous  
Meaning: frequency-body-gyroscope-standardDeviation-X.   
Units:  The average for all the measurements for the subject and activity in the x axis.   
Values: [-1,1]  

-----------------------------
Column 59  
Variable Name:		fBodyGyrostdY  
Type: num  -- Continuous  
Meaning: frequency-body-gyroscope-standardDeviation-Y.   
Units:  The average for all the measurements for the subject and activity in the y axis.   
Values: [-1,1]  

-----------------------------
Column 60  
Variable Name:		fBodyGyrostdZ  
Type: num  -- Continuous  
Meaning: frequency-body-gyroscope-standardDeviation-Z.   
Units:  The average for all the measurements for the subject and activity in the z axis.   
Values: [-1,1]  

-----------------------------
Column 61  
Variable Name:		fBodyAccMagmean  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-magnitude-mean   
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 62  
Variable Name:		fBodyAccMagstd  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-magnitude-standardDeviation   
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 63  
Variable Name:		fBodyBodyAccJerkMagmean  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-jerk-magnitude-mean   
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 64  
Variable Name:		fBodyBodyAccJerkMagstd  
Type: num  -- Continuous  
Meaning: frequency-body-acceleration-jerk-magnitude-standardDeviation   
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 65  
Variable Name:		fBodyBodyGyroMagmean  
Type: num  -- Continuous  
Meaning: frequency-body-body-gyroscope-magnitude-mean   
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 66  
Variable Name:		fBodyBodyGyroMagstd  
Type: num  -- Continuous  
Meaning: frequency-body-body-gyroscope-magnitude-standardDeviation  
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 67  
Variable Name:		fBodyBodyGyroJerkMagmean  
Type: num  -- Continuous  
Meaning: frequency-body-body-gyroscope-jerk-magnitude-mean  
Units:  The average for the subject and activity for the magnitude (mean) of the three-dimensional signals.   
Values: [-1,1]  

-----------------------------
Column 68  
Variable Name:		fBodyBodyGyroJerkMagstd  
Type: num  -- Continuous  
Meaning: frequency-body-body-gyroscope-jerk-magnitude-standardDeviation  
Units:  The average for the subject and activity for the magnitude (standard deviation) of the three-dimensional signals.   
Values: [-1,1]  
