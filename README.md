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

===================================================================
These are the steps in the R Script for Merging data

# Load Test data
# Load Subject for Test data
# Load Activity for Test data
# Merge Subject and Activity to Test data set
# Load Training data
# Load Subject for Training data
# Load Activity for Training data
# Merge Subject to Training data set
# Merge Training and Test Data sets to create one combined data set

===================================================================
These are the steps in the R Script for Extract the measurements on the mean and standard deviation for each measurement

# Load Features data
# Convert feature from factor to character
# Find index of the mean variables
# Find index of the std deviation variables
# Get combined index of mean variables, std dev variables and subject
# Extract measurements on the mean and standard deviation for each measurement

===================================================================
These are the steps in the R Script for descriptive activity names to name the activities in the data set

# Load Activity Labels
# Merge Activity Label and remove the label id column

===================================================================
These are the steps in the R Script for labelling the data set with descriptive variable names

# Get variable names of mean and std deviation variables from the variable list
# Add Subject and Activity to variable name
# Rename variable with descriptive variable names

===================================================================
These are the steps in the R Script for Create tidy data set with the average of each variable for each activity and each subject

# Make a skinny table of all mean and std deviation variables
# Aggregate mean for the measurements for each subject and each activity 
# Write data set to 'avgtidydat.txt' file


===================================================================
Notes: 
======
- Script run_analysis.R script is available in the main directory
- Data should be downloaded from the URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Data should be unzipped to working directory UCIHAR_Dataset 

