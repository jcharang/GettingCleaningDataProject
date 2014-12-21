# Getting and Cleaning Data course project
# run_analysis.R script
# Data is downloaded from UCI Machine Learning Repository
# Data Set Description: Human Activity Recognition Using Smartphones Data Set
# Citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
# URL for data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Download the zip file from the URL and unzip to UCIHAR_Dataset folder

##########################################################################
# 1. Steps to Merge the training and the test sets to create one data set

# Load Test data
tstdata <- read.table("UCIHAR_Dataset/test/X_test.txt", quote="\"")

# Load Subject for Test data
subject_test <- read.table("UCIHAR_Dataset/test/subject_test.txt", quote="\"")

# Load Activity for Test data
tstactivity <- read.table("UCIHAR_Dataset/test/y_test.txt", quote="\"")

# Merge Subject and Activity to Test data set
tstdatc <- cbind(tstdata, subject_test, tstactivity)

# Load Training data
trndata <- read.table("UCIHAR_Dataset/train/X_train.txt", quote="\"")

# Load Subject for Training data
subject_train <- read.table("UCIHAR_Dataset/train/subject_train.txt", quote="\"")

# Load Activity for Training data
trnactivity <- read.table("UCIHAR_Dataset/train/y_train.txt", quote="\"")

# Merge Subject to Training data set
trndatc <- cbind(trndata, subject_train, trnactivity)

# Merge Training and Test Data sets to create one combined data set
combdat <- rbind(trndatc, tstdatc)
dim(combdat)

#######################################################################

# 2. Steps to Extract only the measurements on the mean and standard deviation for each measurement

# Load Features data
features <- read.table("UCIHAR_Dataset/features.txt", quote="\"")

# Convert feature from factor to character
features$FC <- as.character(features$V2)

# Find index of the mean variables
meanidx <- grep("-mean()", features$FC)

# Find index of the std deviation variables
stdidx <- grep("-std()", features$FC)

# Get combined index of mean variables, std dev variables and subject
combidx <- c(meanidx, stdidx, 562, 563)
combidx <- sort(combidx)

# Extract measurements on the mean and standard deviation for each measurement
combdats <- combdat[ , combidx]
dim(combdats)

##########################################################################

# 3. Use descriptive activity names to name the activities in the data set

# Load Activity Labels
activity_labels <- read.table("UCIHAR_Dataset/activity_labels.txt", quote="\"")

# Merge Activity Label and remove the label id column
combdatm <- merge(combdats, activity_labels, by.x="V1.2", by.y="V1", all=TRUE)
combdatm <- combdatm[ , 2:82]
dim(combdatm)

###########################################################################

# 4. Appropriately labels the data set with descriptive variable names

# Get variable names of mean and std deviation variables from the variable list
varhead <- features[c(stdidx, meanidx), 3]

# Add Subject and Activity to variable name
varhead <- c(varhead, "Subject", "Activity")

# Rename variable with descriptive variable names
names(combdatm) <- varhead
names(combdatm)

#############################################################################

# 5. Create tidy data set with the average of each variable for each activity and each subject

mcombdatm <- melt(combdatm, id=names(combdatm)[80:81], measure.vars=names(combdatm)[1:79])
mcombdatdc <- dcast(mcombdatm, Subject + Activity ~ variable, mean)
View(mcombdatdc)
write.table(mcombdatdc, "avgtidydat.txt", sep="\t", row.names=FALSE, col.names=TRUE)

##############################################################################