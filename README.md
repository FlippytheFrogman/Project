===============================================================
Mean of Human Activity Recognition Using Smartphones Dataset
Data sumarized by subject and activity
Version 1.0
================================================================
Dataset acknowledgment referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. 

Using its embedded accelerometer and gyroscope, data was captured 
The obtained datasets were originally andomly partitioned into two sets, 
where 70% of the volunteers was selected for generating the training data and 30% the test data. 

This output here is recombined into one data set and then averaged by subject and activity

In order to process the original data provided execute run_analysis.R.
The R files contains routines that perform the following and are annotated (by numbers).

 #1 Merges the training and the test sets to create one data set.
 #2 Extracts only the measurements on the mean and standard deviation for each
 merge together the information found in mulitple files (subject, activity, collected data) measurement.
 #3 Uses descriptive activity names to name the activities in the data set
 replaceactivityidwithlabels - Merge in the textual description of activities and then remove id
 #4 Appropriately labels the data set with descriptive variable names.
 Improve names of dataframe.  Input datatframe that is the combination of the testing and training data
 Out: Datatframe with abbreviations expanded to longer (more meaningful names), and puncuation 
 characters removed.
 #5 Creates a second, independent tidy data set with the average of each variable for each 
 activity and each subject. Uses aggregate (mean) and write.table


Data provided:
=========================================
The dataset includes the following files:
=========================================

- README.MD
- Codebook.MD'
- run_analysis.R

Notes: 
======
- Features are normalized and bounded within [-1,1].

For more information about this dataset contact: activityrecognition@smartlab.ws
