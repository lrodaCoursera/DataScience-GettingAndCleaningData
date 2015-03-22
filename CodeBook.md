The source set of data used for this exercise has been downloaded from UCI Machine Learning Repository from the following web site

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

and represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The full data set and its description can be found at

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The original data set information can be found at the end of this document.

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012




The files or data sets used to generate the tidy set of data are the following:

features.txt
activity_labels.txt
subject_test.txt
subject_train.txt
X_test.txt
X_train.txt
y_test.txt
y_train.txt


There are two sets of data, a train set with the observations for 21 of the subjects and a test set with the observations for the other 9 subjects.

Files X_train.txt and X_test.txt contain the observations for each of the 561 variables (listed in features.txt). Each row corresponds the values of the 561 variables for a different observation for a particular subject and for a particular activity.

Files subject_train.txt and subject_test.txt contain the subject identifier for each of the observations (rows) in the corresponding X_train.txt/X_test.txt file.

Files y_train.txt and y_test.txt contain the identifier for the activity the subject was doing for each of the observations (rows) in the corresponding X_train.txt/X_test.txt file. The identifiers are a number from 1 to 6 and the translation of this index to the activity name can be found in activity_labels.txt.

From the list of 561 measurements or features we selected for the tidy data only those that represented the mean and standard deviation for each measurement. For this we selected only the features with "mean()" and "std()" in their names from the list of features in features.txt. These correspond to the 66 columns listed below in the data sets in X_train.txt and X_test.txt.

The selected variables were given a name that describes the measure it represents with the following mapping to the original feature:



1: tBodyAcc-mean()-X		->	tBodyAccMeanXaxis
2: tBodyAcc-mean()-Y		->	tBodyAccMeanYaxis
3: tBodyAcc-mean()-Z		->	tBodyAccMeanZaxis
4: tBodyAcc-std()-X		->	tBodyAccStdDevXaxis
5: tBodyAcc-std()-Y		->	tBodyAccStdDevYaxis
6: tBodyAcc-std()-Z		->	tBodyAccStdDevZaxis
41: tGravityAcc-mean()-X	->	tGravityAccMeanXaxis
42: tGravityAcc-mean()-Y	->	tGravityAccMeanYaxis
43: tGravityAcc-mean()-Z	->	tGravityAccMeanZaxis
44: tGravityAcc-std()-X		->	tGravityAccStdDevXaxis
45: tGravityAcc-std()-Y		->	tGravityAccStdDevYaxis
46: tGravityAcc-std()-Z		->	tGravityAccStdDevZaxis
81: tBodyAccJerk-mean()-X	->	tBodyAccJerkMeanXaxis
82: tBodyAccJerk-mean()-Y	->	tBodyAccJerkMeanYaxis
83: tBodyAccJerk-mean()-Z	->	tBodyAccJerkMeanZaxis
84: tBodyAccJerk-std()-X	->	tBodyAccJerkStdDevXaxis
85: tBodyAccJerk-std()-Y	->	tBodyAccJerkStdDevYaxis
86: tBodyAccJerk-std()-Z	->	tBodyAccJerkStdDevZaxis
121: tBodyGyro-mean()-X		->	tBodyGyroMeanXaxis
122: tBodyGyro-mean()-Y		->	tBodyGyroMeanYaxis
123: tBodyGyro-mean()-Z		->	tBodyGyroMeanZaxis
124: tBodyGyro-std()-X		->	tBodyGyroStdDevXaxis
125: tBodyGyro-std()-Y		->	tBodyGyroStdDevYaxis
126: tBodyGyro-std()-Z		->	tBodyGyroStdDevZaxis
161: tBodyGyroJerk-mean()-X	->	tBodyGyroJerkMeanXaxis
162: tBodyGyroJerk-mean()-Y	->	tBodyGyroJerkMeanYaxis
163: tBodyGyroJerk-mean()-Z	->	tBodyGyroJerkMeanZaxis
164: tBodyGyroJerk-std()-X	->	tBodyGyroJerkStdDevXaxis
165: tBodyGyroJerk-std()-Y	->	tBodyGyroJerkStdDevYaxis
166: tBodyGyroJerk-std()-Z	->	tBodyGyroJerkStdDevZaxis
201: tBodyAccMag-mean()		->	tBodyAccMagMean
202: tBodyAccMag-std()		->	tBodyAccMagStdDev
214: tGravityAccMag-mean()	->	tGravityAccMagMean
215: tGravityAccMag-std()	->	tGravityAccMagStdDev
227: tBodyAccJerkMag-mean()	->	tBodyAccJerkMagMean
228: tBodyAccJerkMag-std()	->	tBodyAccJerkMagStdDev
240: tBodyGyroMag-mean()	->	tBodyGyroMagMean
241: tBodyGyroMag-std()		->	tBodyGyroMagStdDev
253: tBodyGyroJerkMag-mean()	->	tBodyGyroJerkMagMean
254: tBodyGyroJerkMag-std()	->	tBodyGyroJerkMagStdDev
266: fBodyAcc-mean()-X		->	fBodyAccMeanXaxis
267: fBodyAcc-mean()-Y		->	fBodyAccMeanYaxis
268: fBodyAcc-mean()-Z		->	fBodyAccMeanZaxis
269: fBodyAcc-std()-X		->	fBodyAccStdDevXaxis
270: fBodyAcc-std()-Y		->	fBodyAccStdDevYaxis
271: fBodyAcc-std()-Z		->	fBodyAccStdDevZaxis
345: fBodyAccJerk-mean()-X	->	fBodyAccJerkMeanXaxis
346: fBodyAccJerk-mean()-Y	->	fBodyAccJerkMeanYaxis
347: fBodyAccJerk-mean()-Z	->	fBodyAccJerkMeanZaxis
348: fBodyAccJerk-std()-X	->	fBodyAccJerkStdDevXaxis
349: fBodyAccJerk-std()-Y	->	fBodyAccJerkStdDevYaxis
350: fBodyAccJerk-std()-Z	->	fBodyAccJerkStdDevZaxis
424: fBodyGyro-mean()-X		->	fBodyGyroMeanXaxis
425: fBodyGyro-mean()-Y		->	fBodyGyroMeanYaxis
426: fBodyGyro-mean()-Z		->	fBodyGyroMeanZaxis
427: fBodyGyro-std()-X		->	fBodyGyroStdDevXaxis
428: fBodyGyro-std()-Y		->	fBodyGyroStdDevYaxis
429: fBodyGyro-std()-Z		->	fBodyGyroStdDevZaxis
503: fBodyAccMag-mean()		->	fBodyAccMagMean
504: fBodyAccMag-std()		->	fBodyAccMagStdDev
516: fBodyBodyAccJerkMag-mean()	->	fBodyBodyAccJerkMagMean
517: fBodyBodyAccJerkMag-std()	->	fBodyBodyAccJerkMagStdDev
529: fBodyBodyGyroMag-mean()	->	fBodyBodyGyroMagMean
530: fBodyBodyGyroMag-std()	->	fBodyBodyGyroMagStdDev
542: fBodyBodyGyroJerkMag-mean()->	fBodyBodyGyroJerkMagMean
543: fBodyBodyGyroJerkMag-std()	->	fBodyBodyGyroJerkMagStdDev



The following transformations were done to the original data sets:

1) The original X_test.txt and X_train.txt data sets were read and only the list of selected columns (see above) are subset in data.frames x_test and x_train. The variables (columns) are set to the list of names listed above in both sets of data.


2) The activity tables for both the train and test sets (y_train.txt and y_test.txt) are both read and the column name set to "Activity"


3) The subject tables for both the train and test sets (subject_train.txt and subject_test.txt) are both read and the column name set to "Subject"

4) The Activity and Subject columns are added to the data.frames x_test and x_train

5) The train and test data are merged into a single set of data (x_data)

6) The activity identifiers are replaced by the string describing the activity according to activity_labels.txt in a new variable called ActivityName

7) The mean value for each of the measurement variables for each Subject and each Activity is calculated.

The final set of data will contain the following rows or variables:

- Subject: with the identifier (1..30) for each of the different subjecst
- ActivityName: with the name of the activity for each observation (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- The average values for each of the variables (features) listed above




######################################
Original Data Set Information:
######################################

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.



######################################


