Call run_analysis.R with the archived dataset provided (getdata_projectfiles_UCI HAR Dataset.zip). Place
this zip file in the same directory as run_analysis.R
This script will run and save two datasets:
- tidyData.txt - merged train and test datasets and extracted only mean and stddev columns
- aggregatedTidyData.txt - this takes the average of each variable using the mean function and saves it in wide data format



DATA DICTIONARY
	Most descriptions were taken from features_info.txt and README.txt from the original data set.

Subject
	The test subject number - 1,...,30

TestTypeName
	Activity label - givin by activity_labels.txt
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

tBodyAccMeanX
	Mean value for Body Acceleration in X direction.  Values are normalised and bounded within [-1,1].
	
tBodyAccMeanY
	Mean value for Body Acceleration in Y direction.  Values are normalised and bounded within [-1,1].

tBodyAccMeanZ
	Mean value for Body Acceleration in Z direction.  Values are normalised and bounded within [-1,1].
	
tBodyAccStdX
	Std Deviation value for Body Acceleration in X direction.  Values are normalised and bounded within [-1,1].

tBodyAccStdY
	Std Deviation value for Body Acceleration in Y direction.  Values are normalised and bounded within [-1,1].
	
tBodyAccStdZ	
	Std Deviation value for Body Acceleration in Z direction.  Values are normalised and bounded within [-1,1].

tGravityAccMeanX
	Mean value for Gravity Acceleration in X direction.  Values are normalised and bounded within [-1,1].
	
tGravityAccMeanY
	Mean value for Gravity Acceleration in Y direction.  Values are normalised and bounded within [-1,1].
	
tGravityAccMeanZ
	Mean value for Gravity Acceleration in Z direction.  Values are normalised and bounded within [-1,1].
	
tGravityAccStdX
	Std Deviation value for Gravity Acceleration in X direction.  Values are normalised and bounded within [-1,1].
	
tGravityAccStdY
	Std Deviation value for Gravity Acceleration in Y direction.  Values are normalised and bounded within [-1,1].

tGravityAccStdZ	
	Std Deviation value for Gravity Acceleration in Z direction.  Values are normalised and bounded within [-1,1].

tBodyAccJerkMeanX
	Mean value for Body Linear Acceleration Jerk signal in X direction.  Values are normalised and bounded within [-1,1].
	
tBodyAccJerkMeanY
	Mean value for Body Linear Acceleration Jerk signal in Y direction.  Values are normalised and bounded within [-1,1].
	
tBodyAccJerkMeanZ
	Mean value for Body Linear Acceleration Jerk signal in Z direction.  Values are normalised and bounded within [-1,1].
	
tBodyAccJerkStdX
	Std Deviation for Body Linear Acceleration Jerk signal in X direction.  Values are normalised and bounded within [-1,1].
	
tBodyAccJerkStdY
	Std Deviation for Body Linear Acceleration Jerk signal in Y direction.  Values are normalised and bounded within [-1,1].
	
tBodyAccJerkStdZ	
	Std Deviation for Body Linear Acceleration Jerk signal in Z direction.  Values are normalised and bounded within [-1,1].

tBodyGyroMeanX
	Mean value for Body Angular Velocity signal in X direction.  Values are normalised and bounded within [-1,1].
	
tBodyGyroMeanY
	Mean value for Body Angular Velocity signal in Y direction.  Values are normalised and bounded within [-1,1].
	
tBodyGyroMeanZ
	Mean value for Body Angular Velocity signal in Z direction.  Values are normalised and bounded within [-1,1].
	
tBodyGyroStdX
	Std Deviation value for Body Angular Velocity (magnitude) Jerk signal in X direction.  Values are normalised and bounded within [-1,1].
	
tBodyGyroStdY
	Std Deviation value for Body Angular Velocity (magnitude) Jerk signal in X direction.  Values are normalised and bounded within [-1,1].
	
tBodyGyroStdZ	
	Std Deviation value for Body Angular Velocity (magnitude) Jerk signal in X direction.  Values are normalised and bounded within [-1,1].

tBodyGyroJerkMeanX
	Mean value for Body Angular Velocity Jerk signal in X direction.  Values are normalised and bounded within [-1,1].

tBodyGyroJerkMeanY
	Mean value for Body Angular Velocity Jerk signal in Y direction.  Values are normalised and bounded within [-1,1].
	
tBodyGyroJerkMeanZ
	Mean value for Body Angular Velocity Jerk signal in Z direction.  Values are normalised and bounded within [-1,1].
	
tBodyGyroJerkStdX
	Std Deviation value for Body Angular Velocity Jerk signal in X direction.  Values are normalised and bounded within [-1,1].

tBodyGyroJerkStdY
	Std Deviation value for Body Angular Velocity Jerk signal in Y direction.  Values are normalised and bounded within [-1,1].

tBodyGyroJerkStdZ	
	Std Deviation value for Body Angular Velocity Jerk signal in Z direction.  Values are normalised and bounded within [-1,1].

tBodyAccMagMean
	Mean value for Body Acceleration (magnitude).  Values are normalised and bounded within [-1,1].

tBodyAccMagStd	
	Std Deviation value for Body Acceleration (magnitude).  Values are normalised and bounded within [-1,1].
	
tGravityAccMagMean
	Mean value for Gravity Acceleration (magnitude).  Values are normalised and bounded within [-1,1].
	
tGravityAccMagStd	
	Std Deviation value for Gravity Acceleration (magnitude).  Values are normalised and bounded within [-1,1].

tBodyAccJerkMagMean
	Mean value for Body Linear Acceleration Jerk signal (magnitude).  Values are normalised and bounded within [-1,1].
	
tBodyAccJerkMagStd	
	Std Deviation value for Body Linear Acceleration Jerk signal (magnitude).  Values are normalised and bounded within [-1,1].

tBodyGyroMagMean
	Mean value for Body Angular Velocity (magnitude) signal.  Values are normalised and bounded within [-1,1].
	
tBodyGyroMagStd	
	Std Deviation value for Body Angular Velocity (magnitude) signal.  Values are normalised and bounded within [-1,1].
	
tBodyGyroJerkMagMean
	Mean value for Body Angular Velocity Jerk (magnitude) signal.  Values are normalised and bounded within [-1,1].
	
tBodyGyroJerkMagStd	
	Std Deviation value for Body Angular Velocity Jerk (magnitude) signal.  Values are normalised and bounded within [-1,1].
	
fBodyAccMeanX
	Mean value for Body Acceleration in X direction (FFT).  Values are normalised and bounded within [-1,1].

fBodyAccMeanY
	Mean value for Body Acceleration in Y direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyAccMeanZ
	Mean value for Body Acceleration in Z direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyAccStdX
	Std Deviation value for Body Acceleration in X direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyAccStdY
	Std Deviation value for Body Acceleration in Y direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyAccStdZ	
	Std Deviation value for Body Acceleration in Z direction (FFT).  Values are normalised and bounded within [-1,1].

fBodyAccJerkMeanX
	Mean value for Body Linear Acceleration Jerk signal in X direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyAccJerkMeanY
	Mean value for Body Linear Acceleration Jerk signal in Y direction (FFT).  Values are normalised and bounded within [-1,1].

fBodyAccJerkMeanZ
	Mean value for Body Linear Acceleration Jerk signal in Z direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyAccJerkStdX
	Std Deviation value for Body Linear Acceleration Jerk signal in X direction (FFT).  Values are normalised and bounded within [-1,1].

fBodyAccJerkStdY
	Std Deviation value for Body Linear Acceleration Jerk signal in Y direction (FFT).  Values are normalised and bounded within [-1,1].

fBodyAccJerkStdZ	
	Std Deviation value for Body Linear Acceleration Jerk signal in Z direction (FFT).  Values are normalised and bounded within [-1,1].

fBodyGyroMeanX
	Mean value for Body Angular Velocity signal in X direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyGyroMeanY
	Mean value for Body Angular Velocity signal in Y direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyGyroMeanZ
	Mean value for Body Angular Velocity signal in Z direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyGyroStdX
	Std Deviation value for Body Angular Velocity signal in X direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyGyroStdY
	Std Deviation value for Body Angular Velocity signal in Y direction (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyGyroStdZ	
	Std Deviation value for Body Angular Velocity signal in Z direction (FFT).  Values are normalised and bounded within [-1,1].

fBodyAccMagMean
	Mean value for Body Acceleration (magnitude) (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyAccMagStd	
	Std Deviation value for Body Acceleration (magnitude) (FFT).  Values are normalised and bounded within [-1,1].

fBodyBodyAccJerkMagMean
	Mean value for Body Linear Acceleration Jerk signal (magnitude) (FFT).  Values are normalised and bounded within [-1,1].
	
fBodyBodyAccJerkMagStd	
	Std Deviation value for Body Linear Acceleration Jerk signal (magnitude) (FFT).  Values are normalised and bounded within [-1,1].

fBodyBodyGyroMagMean
	Mean value for Body Angular Velocity (magnitude) signal (FFT).  Values are normalised and bounded within [-1,1].

fBodyBodyGyroMagStd	
	Std Deviation value for Body Angular Velocity (magnitude) signal (FFT).  Values are normalised and bounded within [-1,1].

fBodyBodyGyroJerkMagMean
	Mean value for Body Angular Velocity Jerk (magnitude) signal (FFT).  Values are normalised and bounded within [-1,1].

fBodyBodyGyroJerkMagStd
	Std Deviation value for Body Angular Velocity Jerk (magnitude) signal (FFT).  Values are normalised and bounded within [-1,1].