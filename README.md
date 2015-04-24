# Getting and Cleaning Data Project

The purpose of this readme is to describe my approach to the Getting and Cleaning Data Project
## Setup
####Read the data files into a data frame
The following test files were read 

* X_test.txt contains the test data set
* y_test.txt contains the test activities
* X_train.txt contains the training data set
* Y_train.txt contains the training activities
* subject_test.txt the subject who performed the test
* subject_train.txt the subject who performed the training

The following descriptive files were read  
* activity_labels.txt containing the activity labels
* features.txt containing the headings

#### Merge the training and the test sets to create one data set.
Two data frames were created based on the following criteria;
* the subject,
* the activity, and 
* the outcome. 

This was achieved using the cbind() function. The data frames were then 
merged into one data frame using the rbind()function. 

#### Extract only the measurements on the mean and standard deviation for each measurement.
This was done using the r grep command on the column names of the merged data frame. The 
measurements are stored int oa new data frame;
* meanCalculations <- grep("mean()", colnames(merged_df))
* sdtCalculations <- grep("std()", colnames(merged_df))

The data frames are then merged into one data frame. 
* mean_and_std_columns <- c(meanCalculations, sdtCalculations)
  
  
#### Use descriptive activity names to name the activities in the data set
The activity labels are stored in the data frame. 
Iterate through the activity labels in the data frame, extracting each activity ID.  

if the activity id matches an id in the activity_labels data frame, set the 
mean_and_std_df activity id to the activity_labels value. 

#### Appropriately labels the data set with descriptive variable names. 
I tried following the standard as outlined in the course notes on week 4, and the discussion
thread notes:
* names of variables should
** be all lower case
** be descriptive
** not repeated
** not contain non-alphabetic characters or numbers.

I changed the variable names so that the indiviual words started in upper case. I was very conflicted in how I renamed the variables names, in my opinion, sseperation with '_' is easier to read, but does lengthen the name. My transformations are as follows:  
* t -> time
* f -> frequency
* mean() -> Mean
* sdt() -> StandardDeviation
* - was removed
* () was removed
* BodyBody -> Body
* Acc -> Accelerator

The r command gsub was used to do all the replacements.

#### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
To do this, I am using melt and cast. In the melt function, Activity and Subject are specified as unique
ID's.
In the cast function, I still want Subject and Activity to be unique ID's. The cast function allows me to aggregate the data by function, see http://seananderson.ca/2013/10/19/reshape.html. 