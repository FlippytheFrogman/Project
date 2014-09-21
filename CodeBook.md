Codebook

From the original documenation (in the zip file)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals . Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm . 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals.
 
These signals were used to estimate variables of the feature vector for each pattern.

Here are the steps that were followed to create the output data set.

1    Merged the training and the test sets to create one data set.
2    Extracted the measurements on the mean and standard deviation for each measurement. 
3    Used descriptive activity names to name the activities in the data set
4    Provided descriptive variable names. 
5    Created a second, independent tidy data set with the average of each variable for each activity and  subject.  This was done by taking the average of the sample data provided.

The following is the transformed data.  Rows 3 - 81 are normalized and bounded within [-1,1].


* [1] "activity" - String indicating the activity that the subject was undertaking: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and, "LAYING".
* [2] "subjectID" - Integer subject identifier (There are 30 subjects. i.e. 1 represents person 1).  
* [3] "BodyAccelerationMeanX" - mean of volunteer's body motion acceleration along the x-axis.
* [4] "BodyAccelerationMeanY" - mean of volunteer's body motion acceleration along the y-axis.
* [5] "BodyAccelerationMeanZ" - mean of volunteer's body motion acceleration along the z-axis.
* [6] "BodyAccelerationStandardDeviationX" - standard deviation of volunteer's body acceleration along the x-axis.
* [7] "BodyAccelerationStandardDeviationY" - standard deviation of volunteer's body acceleration along the y-axis
* [8] "BodyAccelerationStandardDeviationZ" - standard deviation of volunteer's body acceleration along the z-axis
* [9] "GravityAccelerationMeanX" - mean of acceleration due to gravity, along the x-axis.
* [10] "GravityAccelerationMeanY" - mean of acceleration due to gravity, along the y-axis.
* [11] "GravityAccelerationMeanZ" - mean of acceleration due to gravity, along the z-axis.
* [12] "GravityAccelerationStandardDeviationX" - standard deviation of movement along the x-axis, due to gravity.
* [13] "GravityAccelerationStandardDeviationY" - standard deviation of movement along the y-axis, due to gravity.
* [14] "GravityAccelerationStandardDeviationZ" - standard deviation of movement along the z-axis, due to gravity.
* [15] "BodyAccelerationJerkMeanX" - mean volunteer's body Jerk (change in body linear acceleration and angular velocity) along the x-axis.
* [16] "BodyAccelerationJerkMeanY" - mean volunteer's body Jerk (change in body linear acceleration and angular velocity) along the y-axis.
* [17] "BodyAccelerationJerkMeanZ" - mean volunteer's body Jerk (change in body linear acceleration and angular velocity) along the z-axis.
* [18] "BodyAccelerationJerkStandardDeviationX" - standard deviation of volunteer's body Jerk (change in body linear acceleration and angular velocity) along the x-axis.
* [19] "BodyAccelerationJerkStandardDeviationY" - standard deviation of volunteer's body Jerk (change in body linear acceleration and angular velocity) along the y-axis.
* [20] "BodyAccelerationJerkStandardDeviationZ" - standard deviation of volunteer's body Jerk (change in body linear acceleration and angular velocity) along the z-axis.
* [21] "BodyGyroscopeMeanX" - mean gyroscopically measured of the volunteer's body in the x direction.
* [22] "BodyGyroscopeMeanY" - mean gyroscopically measured of the volunteer's body in the y direction.
* [23] "BodyGyroscopeMeanZ" - mean gyroscopically measured of the volunteer's body in the z direction.
* [24] "BodyGyroscopeStandardDeviationX" - standard deviation of gyroscopically measured movement of the volunteer's body in the x direction.
* [25] "BodyGyroscopeStandardDeviationY" - standard deviation of gyroscopically measured movementof the volunteer's body in the y direction.
* [26] "BodyGyroscopeStandardDeviationZ" - standard deviation of gyroscopically measured movement of the volunteer's body in the z direction.
* [27] "BodyGyroscopeJerkMeanX"  - mean volunteer's body gyroscopically measured Jerk (change in body linear acceleration and angular velocity) along the x-axis.
* [28] "BodyGyroscopeJerkMeanY" - mean volunteer's body gyroscopically measured Jerk (change in body linear acceleration and angular velocity) along the y-axis.
* [29] "BodyGyroscopeJerkMeanZ" - mean volunteer's body gyroscopically measured Jerk (change in body linear acceleration and angular velocity) along the z-axis.
* [30] "BodyGyroscopeJerkStandardDeviationX"  - standard deviation of volunteer's body gyroscopically measured Jerk (change in body linear acceleration and angular velocity) along the x-axis.
 [31] "BodyGyroscopeJerkStandardDeviationY" - standard deviation of volunteer's body gyroscopically measured Jerk (change in body linear acceleration and angular velocity) along the y-axis.
* [32] "BodyGyroscopeJerkStandardDeviationZ" - standard deviation of volunteer's body gyroscopically measured Jerk (change in body linear acceleration and angular velocity) along the z-axis.
* [33] "BodyAccelerationMagnitudeMean" - mean magnitude (calculated using three axis data) of volunteer's body acceleration.
* [34] "BodyAccelerationMagnitudeStandardDeviation" - standard deviation of magnitude (calculated using three axis data) of volunteer's body acceleration.
* [35] "GravityAccelerationMagnitudeMean" - mean magnitude (calculated using three axis data) of acceleration due to Gravity.
* [36] "GravityAccelerationMagnitudeStandardDeviation" - standard deviation of magnitude of acceleration due to gravity.
* [37] "BodyAccelerationJerkMagnitudeMean" - mean magnitude (calculated using three axis data) of volunteer's body Jerk (change in body linear acceleration and angular velocity).
* [38] "BodyAccelerationJerkMagnitudeStandardDeviation" - standard deviation of magnitude (calculated using three axis data) of volunteer's body acceleration Jerk (change in body linear acceleration and angular velocity).
* [39] "BodyGyroscopeMagnitudeMean" - mean magnitude (calculated using three axis data) of volunteer's body orientation measured with a gyroscope.
* [40] "BodyGyroscopeMagnitudeStandardDeviation" - standard deviation of magnitude of volunteer's body orientation measured with a Gyroscope (calculated using three axis data).
* [41] "BodyGyroscopeJerkMagnitudeMean" - mean magnitude (calculated using three axis data) of volunteer's body orientation measured with a Gyroscope Jerk (acceleration rate of change).
* [42] "BodyGyroscopeJerkMagnitudeStandardDeviation" - standard deviation of volunteer's body orientation measured with a Gyroscope Jerk (acceleration rate of change).
* [43] "FFTBodyAccelerationMeanX" - mean x-axis volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [44] "FFTBodyAccelerationMeanY" - mean y-axis volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [45] "FFTBodyAccelerationMeanZ" - mean z-axis volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [46] "FFTBodyAccelerationStandardDeviationX" - standard deviation x-axis volunteer's body acceleration  with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [47] "FFTBodyAccelerationStandardDeviationY" - standard deviation y-axis volunteer's body acceleration  with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [48] "FFTBodyAccelerationStandardDeviationZ" - standard deviation z-axis volunteer's body acceleration  with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [49] "FFTBodyAccelerationMeanFrequencyX" - x-axis mean frequency volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [50] "FFTBodyAccelerationMeanFrequencyY" - y-axis mean frequency volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [51] "FFTBodyAccelerationMeanFrequencyZ" - z-axis mean frequency volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [52] "FFTBodyAccelerationJerkMeanX" - mean Jerk (change in body linear acceleration and angular velocity) on x-axis of volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [53] "FFTBodyAccelerationJerkMeanY" - mean Jerk (change in body linear acceleration and angular velocity) on y-axis of volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [54] "FFTBodyAccelerationJerkMeanZ" - mean Jerk (change in body linear acceleration and angular velocity) on z-axis of volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [55] "FFTBodyAccelerationJerkStandardDeviationX" - standard deviation of Jerk (change in body linear acceleration and angular velocity) on x-axis of volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [56] "FFTBodyAccelerationJerkStandardDeviationY" - standard deviation of Jerk (change in body linear acceleration and angular velocity) on y-axis of volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [57] "FFTBodyAccelerationJerkStandardDeviationZ" - standard deviation of Jerk (change in body linear acceleration and angular velocity) on z-axis of volunteer's body acceleration with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [58] "FFTBodyAccelerationJerkMeanFrequencyX" - mean x-axis frequency of volunteer's body Jerk (change in body linear acceleration and angular velocity) with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [59] "FFTBodyAccelerationJerkMeanFrequencyY" - mean y-axis frequency of volunteer's body Jerk (change in body linear acceleration and angular velocity) with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [60] "FFTBodyAccelerationJerkMeanFrequencyZ" - FFT of of mean z-axis frequency volunteer's body Jerk (change in body linear acceleration and angular velocity) with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [61] "FFTBodyGyroscopeMeanX" - mean x-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [62] "FFTBodyGyroscopeMeanY" - mean y-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [63] "FFTBodyGyroscopeMeanZ" - mean z-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [64] "FFTBodyGyroscopeStandardDeviationX" - standard deviation of x-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [65] "FFTBodyGyroscopeStandardDeviationY" - standard deviation of y-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [66] "FFTBodyGyroscopeStandardDeviationZ" - standard deviation of z-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [67] "FFTBodyGyroscopeMeanFrequencyX" - mean frequency of x-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [68] "FFTBodyGyroscopeMeanFrequencyY" - mean frequency of y-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [69] "FFTBodyGyroscopeMeanFrequencyZ" - mean frequency of z-axis volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [70] "FFTBodyAccelerationMagnitudeMean" - mean magnitude of volunteer's body orientation with frequency domain signals obtained by calculating with FFT on the time domain signal (calculated using three axis data).
* [71] "FFTBodyAccelerationMagnitudeStandardDeviation" - standard deviation of magnitude of acceleration of volunteer's body - with frequency domain signals obtained by calculating with FFT on the time domain signal (calculated using three axis data).
* [72] "FFTBodyAccelerationMagnitudeMeanFrequency" - mean frequency (weighted average of the frequency components) of acceleration of volunteer's body with frequency domain signals obtained by calculating with FFT on the time domain signal (calculated using three axis data).
* [73] "FFTBodyBodyAccelerationJerkMagnitudeMean" - mean magnitude of volunteer's body acceleration Jerk (change in body linear acceleration and angular velocity) (os three axis data).
* [74] "FFTBodyBodyAccelerationJerkMagnitudeStandardDeviation" - standard deviation of mean volunteer's body acceleration Jerk (change in body linear acceleration and angular velocity) magnitude (calculated using three axis data).
* [75] "FFTBodyBodyAccelerationJerkMagnitudeMeanFrequency" - mean frquency ( weighted average of the frequency components, producing a mean) body acceleration Jerk (change in body linear acceleration and angular velocity) magnitude (calculated using three axis data).
* [76] "FFTBodyBodyGyroscopeMagnitudeMean" - mean magnitude (in three axes) of volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [77] "FFTBodyBodyGyroscopeMagnitudeStandardDeviation" - mean standard deviation of magnitude (in three axes) of volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [78] "FFTBodyBodyGyroscopeMagnitudeMeanFrequency" - mean frequency of magnitude (in three axes) of volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [79] "FFTBodyBodyGyroscopeJerkMagnitudeMean" - mean magnitude (in three axes) of Jerk (change in body linear acceleration and angular velocity) of volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [80] "FFTBodyBodyGyroscopeJerkMagnitudeStandardDeviation" - standard deviation of magnitude (in three axes) of Jerk (change in body linear acceleration and angular velocity) of volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
* [81] "FFTBodyBodyGyroscopeJerkMagnitudeMeanFrequency" - mean magnitude of frequency (in three axes) of Jerk (change in body linear acceleration and angular velocity) of volunteer's body orientation measured with a gyroscope - with frequency domain signals obtained by calculating with FFT on the time domain signal.
