Getting and Cleaning Data Course Project  
README.txt  
Written by: Rafael Antonio Serrano Recinos  


Required packages: dplyr 0.4.1, reshape2 1.4.1, plyr 1.8.1  
The raw data should be downloaded from  
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones   
The raw data have to be decompressed and the "UCI HAR Dataset" should be in your working directory.  
Run the script run_analysis.R  

The output file is a tidy dataset with 68 variables and 180 observations.

Guide for run_analysis.R
=========================
1.- Checks if the required packages are installed in the machine and install them if they are not.

2.- Load the required packages.

3.- Reading the test (x, y, subject) files of the raw data set.

4.- Reading the features file of the raw data set.

5.- Rename the variables names in "X_test" to have features names.

6.- Change the numbers in "y_test" for the names of the activities.

7.- Convert the vector of "activities_test" to a data frame to be able to use "cbind".

8.- Merging the files of the "test" data set using "cbind".

9.- Rename the columns of "activity" and "subject" to be able to merge the "test" and "train" data sets.


10.- Reading the train (x, y, subject) files of the raw data set.

11.- Rename the variables names in "X_train" to have features names.

12.- Change the numbers in "y_test" for the names of the activities.

13.- Convert the vector of "activities_train" to a data frame to be able to use "cbind".

14.- Merging the files of the "train" data set using "cbind".

15.- Rename the columns of "activity" and "subject" to be able to merge the "test" and "train" data sets.


16.- Merge the "test" and "train" data sets.

17.- Create a vector with the strings of the asked variables.

18.- Create a vector of variables names with only "mean" and "std".

19.- Remove from the vector the variables with "meanFreq".

20.- Add to the vector the variables "activity" and "subject".  

21.- Create the final merge of the test and train data sets with only the asked variables.


22.- "Melt" the final merge data frame with id= "subject" , "activity".

23.- Re-cast the data frame with the function "mean" to obtain the average of each variable for each activity and each subject.

24.- Clean the variables names to remove dots and make them more readable.

25.- write file "finalFile.txt" to disk in the working directory.


