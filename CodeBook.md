# Getting and Cleaning Data Project Code Book

The purpose of this readme is to describe data and variable in the Getting and Cleaning Data Project

#### Data Source

The data used in this project can be downloaded from [here|https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] 


#### Files used in this project
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

#### Description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

#### Variables in Data Set

Subject          the subject, 30 subjects in total
Activity         the test activity, see activity_labels.txt for a list of activities.
timeBodyAcceleratorMeanX 
timeBodyAcceleratorMeanY 
timeBodyAcceleratorMeanZ 
timeGravityAcceleratorMeanX 
timeGravityAcceleratorMeanY 
timeGravityAcceleratorMeanZ 
timeBodyAcceleratorJerkMeanX 
timeBodyAcceleratorJerkMeanY 
timeBodyAcceleratorJerkMeanZ 
timeBodyGyroMeanX 
timeBodyGyroMeanY 
timeBodyGyroMeanZ 
timeBodyGyroJerkMeanX 
timeBodyGyroJerkMeanY 
timeBodyGyroJerkMeanZ 
timeBodyAcceleratorMagMean 
timeGravityAcceleratorMagMean 
timeBodyAcceleratorJerkMagMean 
timeBodyGyroMagMean 
timeBodyGyroJerkMagMean 
frequencyBodyAcceleratorMeanX 
frequencyBodyAcceleratorMeanY 
frequencyBodyAcceleratorMeanZ 
frequencyBodyAcceleratormeanFreqX 
frequencyBodyAcceleratormeanFreqY 
frequencyBodyAcceleratormeanFreqZ 
frequencyBodyAcceleratorJerkMeanX 
frequencyBodyAcceleratorJerkMeanY 
frequencyBodyAcceleratorJerkMeanZ 
frequencyBodyAcceleratorJerkmeanFreqX 
frequencyBodyAcceleratorJerkmeanFreqY 
frequencyBodyAcceleratorJerkmeanFreqZ 
frequencyBodyGyroMeanX 
frequencyBodyGyroMeanY 
frequencyBodyGyroMeanZ 
frequencyBodyGyromeanFreqX 
frequencyBodyGyromeanFreqY 
frequencyBodyGyromeanFreqZ 
frequencyBodyAcceleratorMagMean 
frequencyBodyAcceleratorMagmeanFreq 
frequencyBodyAcceleratorJerkMagMean 
frequencyBodyAcceleratorJerkMagmeanFreq 
frequencyBodyGyroMagMean 
frequencyBodyGyroMagmeanFreq 
frequencyBodyGyroJerkMagMean
frequencyBodyGyroJerkMagmeanFreq 
timeBodyAcceleratorStandardDeviationX 
timeBodyAcceleratorStandardDeviationY 
timeBodyAcceleratorStandardDeviationZ 
timeGravityAcceleratorStandardDeviationX 
timeGravityAcceleratorStandardDeviationY 
timeGravityAcceleratorStandardDeviationZ 
timeBodyAcceleratorJerkStandardDeviationX 
timeBodyAcceleratorJerkStandardDeviationY 
timeBodyAcceleratorJerkStandardDeviationZ 
timeBodyGyroStandardDeviationX 
timeBodyGyroStandardDeviationY 
timeBodyGyroStandardDeviationZ 
timeBodyGyroJerkStandardDeviationX 
timeBodyGyroJerkStandardDeviationY 
timeBodyGyroJerkStandardDeviationZ 
timeBodyAcceleratorMagStandardDeviation 
timeGravityAcceleratorMagStandardDeviation 
timeBodyAcceleratorJerkMagStandardDeviation 
timeBodyGyroMagStandardDeviation 
timeBodyGyroJerkMagStandardDeviation 
frequencyBodyAcceleratorStandardDeviationX 
frequencyBodyAcceleratorStandardDeviationY 
frequencyBodyAcceleratorStandardDeviationZ 
frequencyBodyAcceleratorJerkStandardDeviationX 
frequencyBodyAcceleratorJerkStandardDeviationY 
frequencyBodyAcceleratorJerkStandardDeviationZ 
frequencyBodyGyroStandardDeviationX 
frequencyBodyGyroStandardDeviationY 
frequencyBodyGyroStandardDeviationZ 
frequencyBodyAcceleratorMagStandardDeviation 
frequencyBodyAcceleratorJerkMagStandardDeviation 
frequencyBodyGyroMagStandardDeviation 
frequencyBodyGyroJerkMagStandardDeviation
