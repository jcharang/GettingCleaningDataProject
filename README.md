GettingCleaningDataProject
==========================

Getting and Cleaning Data project from Cousera

===================================================================
Getting and Cleaning Data course project work

==================================================================
Dataset used: Human Activity Recognition Using Smartphones Dataset
Reference: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

==================================================================

The dataset includes the following files:
=========================================

- 'README.txt'

- 'run_analysis.R script': This script does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- 'avgtidydat.txt': Tidy data set with the average of each variable for each activity and each subject.

- 'avgtidydat_labels.txt': Tiday data variable labels.

Notes: 
======
- Script run_analysis.R script is available in the main directory
- Data should be downloaded from the URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Data should be unzipped to working directory UCIHAR_Dataset 

