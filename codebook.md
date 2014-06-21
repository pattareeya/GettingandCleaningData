This is the code book for Data_avg.txt
============================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

============================================================

Columns represent the activities which are:
* Laying
* Sitting
* Standing
* Walking
* Walking_Downstairs: Walking Downstairs
* Walking_Upstairs: Waling Upstairs

Rows represent signals based on different activities, all the range of the signals are from -1.00 to 1.00, variables are

* tBodyAcc-mean()-X      : Mean of Time  Body Acceration signal on axis X
* tBodyAcc-mean()-Y      : Mean of Time Body Acceration signal on axis Y
* tBodyAcc-mean()-Z      : Mean of Time Body Acceration signal on axis Z
* tBodyAcc-std()-X       : Standard deviation of Time Body Acceration signal on axis X
* tBodyAcc-std()-Y       : Standard deviation of Time Body Acceration signal on axis Y
* tBodyAcc-std()-Z       : Standard deviation of Time Body Acceration signal on axis Z
* tGravityAcc-mean()-X   :Mean of Time Gravity Accerelation signal on axis X
* tGravityAcc-mean()-Y   :Mean of Time Gravity Accerelation signal on axis Y
* tGravityAcc-mean()-Z   :Mean of Time Gravity Accerelation signal on axis Z
* tGravityAcc-std()-X    :Standard deviation of Time Gravity Accerelation signal on axis X
* tGravityAcc-std()-Y    :Standard deviation of Time Gravity Accerelation signal on axis Y
* tGravityAcc-std()-Z    :Standard deviation of Time Gravity Accerelation signal on axis Z
* tBodyAccJerk-mean()-X  :Mean of Time Body linear acceleration Jerk signal on axis X
* tBodyAccJerk-mean()-Y  :Mean of Time Body linear acceleration Jerk signal on axis Y
* tBodyAccJerk-mean()-Z  :Mean of Time Body linear acceleration Jerk signal on axis Z
* tBodyAccJerk-std()-X   :Standard deviation of Time Body linear acceleration Jerk signal on axis X
* tBodyAccJerk-std()-Y   :Standard deviation of Time Body linear acceleration Jerk signal on axis Y
* tBodyAccJerk-std()-Z   :Standard deviation of Time Body linear acceleration Jerk signal on axis Z
* tBodyGyro-mean()-X     :Mean of Time Body Angular Velocity signal on axis X 
* tBodyGyro-mean()-Y     :Mean of Time Body Angular Velocity signal on axis Y
* tBodyGyro-mean()-Z     :Mean of Time Body Angular Velocity signal on axis Z
* tBodyGyro-std()-X      :Standard deviation of Time Body Angular Velocity signal on axis X
* tBodyGyro-std()-Y      :Standard deviation of Time Body Angular Velocity signal on axis Y
* tBodyGyro-std()-Z      :Standard deviation of Time Body Angular Velocity signal on axis Z
* tBodyGyroJerk-mean()-X :Mean of Time Body Angular Velocity Jerk signal on axis X
* tBodyGyroJerk-mean()-Y :Mean of Time Body Angular Velocity Jerk signal on axis Y
* tBodyGyroJerk-mean()-Z ::Mean of Time Body Angular Velocity Jerk signal on axis Z
* tBodyGyroJerk-std()-X  :Standard deviation of Time Body Angular Velocity Jerk signal on axis X
* tBodyGyroJerk-std()-Y  :Standard deviation of Time Body Angular Velocity Jerk signal on axis Y
* tBodyGyroJerk-std()-Z  :Standard deviation of Time Body Angular Velocity Jerk signal on axis Z
* tBodyAccMag-mean()     :Mean of Time Body Accerelation Magnitude
* tBodyAccMag-std()      :Standard deviation of Time Body Accerelation Magnitude
* tGravityAccMag-mean()  :Mean of Time Gravity Accerelation Magnitude
* tGravityAccMag-std()   :Standard deviation of Time Gravity Accerelation Magnitude
* tBodyAccJerkMag-mean() :Mean of Time Body Accerelation Jerk Magnitude
* tBodyAccJerkMag-std()  :Standard deviation of Time Body Accerelation Jerk Magnitude
* tBodyGyroMag-mean()    :Mean of Time Body Angular Velocity Magnitude
* tBodyGyroMag-std()     :Standard deviation of Time Body Angular Velocity Magnitude
* tBodyGyroJerk-mean()   :Mean of Time Body Angular Velocity Jerk signal
* tBodyGyroJerk-std()    :Standard deviation of Time Body Angular Velocity Jerk signal
* fBodyAcc-mean()-X      :Mean of Fast Fourier Transform of Body Acceleration on axis X
* fBodyAcc-mean()-Y      :Mean of Fast Fourier Transform of Body Acceleration on axis Y
* fBodyAcc-mean()-Z      :Mean of Fast Fourier Transform of Body Acceleration on axis Z
* fBodyAcc-std()-X       :Standard deviation of Fast Fourier Transform of Body Acceleration on axis X
* fBodyAcc-std()-Y       :Standard deviation of Fast Fourier Transform of Body Acceleration on axis Y
* fBodyAcc-std()-Z       :Standard deviation of Fast Fourier Transform of Body Acceleration on axis Z
* fBodyAccJerk-mean()-X  :Mean of Fast Fourier Transform of Body Acceleration Jerk signal on axis X 
* fBodyAccJerk-mean()-Y  :Mean of Fast Fourier Transform of Body Acceleration Jerk signal on axis Y
* fBodyAccJerk-mean()-Z  :Mean of Fast Fourier Transform of Body Acceleration Jerk signal on axis Z
* fBodyAccJerk-std()-X   :Standard deviation of Fast Fourier Transform of Body Acceleration Jerk signal on axis X
* fBodyAccJerk-std()-Y   :Standard deviation of Fast Fourier Transform of Body celeration Jerk signal on axis Y
* fBodyAccJerk-std()-Z   :Standard deviation of Fast Fourier Transform of Body Acceleration Jerk signal on axis Z
* fBodyGyro-mean()-X     :Mean of Fast Fourier Transform of Body Angular Velocity signal on axis X
* fBodyGyro-mean()-Y     :Mean of Fast Fourier Transform of Body Angular Velocity signal on axis Y
* fBodyGyro-mean()-Z     :Mean of Fast Fourier Transform of Body Angular Velocity signal on axis Z
* fBodyGyro-std()-X      :Standard deviation of Fast Fourier Transform of Body Angular Velocity signal on axis X
* fBodyGyro-std()-Y      :Standard deviation of Fast Fourier Transform of Body Angular Velocity signal on axis Y
* fBodyGyro-std()-Z      :Standard deviation of Fast Fourier Transform of Body Angular Velocity signal on axis Z
* fBodyAccMag-mean()     :Mean of of Fast Fourier Transform of Body Acceleration Magnitude 
* fBodyAccMag-std()      :Standard deviation of Fast Fourier Transform of Body Acceleration Magnitude
* fBodyAccJerkMag-mean() :Mean of of Fast Fourier Transform of Body Acceleration Jerk Magnitude
* fBodyAccJerkMag-std()  :Standard deviation of Fast Fourier Transform of Body Acceleration Jerk Magnitude
* fBodyGyroMag-mean()    :Mean of Fast Fourier Transform of Body Angular Velocity Magnitude
* fBodyGyroMag-std()     :Standard deviation of Fast Fourier Transform of Body Angular Velocity Magnitude
* fBodyGyroJerkMag-mean()  :Mean of Fast Fourier Transform of Body Angular Velocity Jerk Magnitude
* fBodyGyroJerkMag-std()   :Standard deviation of Fast Fourier Transform of Body Angular Velocity Jerk Magnitude 
