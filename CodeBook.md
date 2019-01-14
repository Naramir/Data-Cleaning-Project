This document is a codebook providing descriptions of the variables, the data, and all transformations and work that I performed to clean up the data.

## DATA:

Source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Quoting from the source's website:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## TRANSFORMATIONS:

Data from the sources was divided into test and training data. A subset containing measurements of means and standard deviations for various variables was created from both of these datasets. Names of the variables were adjusted and some typos were corrected. Variables of these two subsets were properly labelled. Numbers standing for activities were replaced with proper description. Then these two subsets were merged into a new dataset, which contained both test and train data with appropriate labels. Then the final tidy dataset was created by taking the average of each variable for each activity and each subject.


## VARIABLES:

The tidy dataset contains averages of following measurements for each of the two identifiers.

### IDENTIFIERS

Subject

Activities

### MEASUREMENTS

time.domain Body Accelerometer  Mean X

time.domain Body Accelerometer  Mean Y

time.domain Body Accelerometer  Mean Z

time.domain Body Accelerometer  Std X

time.domain Body Accelerometer  Std Y

time.domain Body Accelerometer  Std Z

time.domain Gravity Accelerometer  Mean X

time.domain Gravity Accelerometer  Mean Y

time.domain Gravity Accelerometer  Mean Z

time.domain Gravity Accelerometer  Std X

time.domain Gravity Accelerometer  Std Y

time.domain Gravity Accelerometer  Std Z

time.domain Body Accelerometer Jerk Mean X

time.domain Body Accelerometer Jerk Mean Y

time.domain Body Accelerometer Jerk Mean Z

time.domain Body Accelerometer Jerk Std X

time.domain Body Accelerometer Jerk Std Y

time.domain Body Accelerometer Jerk Std Z

time.domain Body Gyroscope  Mean X

time.domain Body Gyroscope  Mean Y

time.domain Body Gyroscope  Mean Z

time.domain Body Gyroscope  Std X

time.domain Body Gyroscope  Std Y

time.domain Body Gyroscope  Std Z

time.domain Body Gyroscope Jerk Mean X

time.domain Body Gyroscope Jerk Mean Y

time.domain Body Gyroscope Jerk Mean Z

time.domain Body Gyroscope Jerk Std X

time.domain Body Gyroscope Jerk Std Y

time.domain Body Gyroscope Jerk Std Z

time.domain Body Accelerometer  Magnitude  Mean

time.domain Body Accelerometer  Magnitude  Std

time.domain Gravity Accelerometer  Magnitude  Mean

time.domain Gravity Accelerometer  Magnitude  Std

time.domain Body Accelerometer Jerk Magnitude  Mean

time.domain Body Accelerometer Jerk Magnitude  Std

time.domain Body Gyroscope  Magnitude  Mean

time.domain Body Gyroscope  Magnitude  Std

time.domain Body Gyroscope Jerk Magnitude  Mean

time.domain Body Gyroscope Jerk Magnitude  Std

frequency.domain Body Accelerometer  Mean X

frequency.domain Body Accelerometer  Mean Y

frequency.domain Body Accelerometer  Mean Z

frequency.domain Body Accelerometer  Std X

frequency.domain Body Accelerometer  Std Y

frequency.domain Body Accelerometer  Std Z

frequency.domain Body Accelerometer  Mean  Frequency X

frequency.domain Body Accelerometer  Mean  Frequency Y

frequency.domain Body Accelerometer  Mean  Frequency Z

frequency.domain Body Accelerometer Jerk Mean X

frequency.domain Body Accelerometer Jerk Mean Y

frequency.domain Body Accelerometer Jerk Mean Z

frequency.domain Body Accelerometer Jerk Std X

frequency.domain Body Accelerometer Jerk Std Y

frequency.domain Body Accelerometer Jerk Std Z

frequency.domain Body Accelerometer Jerk Mean  Frequency X

frequency.domain Body Accelerometer Jerk Mean  Frequency Y

frequency.domain Body Accelerometer Jerk Mean  Frequency Z

frequency.domain Body Gyroscope  Mean X

frequency.domain Body Gyroscope  Mean Y

frequency.domain Body Gyroscope  Mean Z

frequency.domain Body Gyroscope  Std X

frequency.domain Body Gyroscope  Std Y

frequency.domain Body Gyroscope  Std Z

frequency.domain Body Gyroscope  Mean  Frequency X

frequency.domain Body Gyroscope  Mean  Frequency Y

frequency.domain Body Gyroscope  Mean  Frequency Z

frequency.domain Body Accelerometer  Magnitude  Mean

frequency.domain Body Accelerometer  Magnitude  Std

frequency.domain Body Accelerometer  Magnitude  Mean  Frequency

frequency.domain Body Accelerometer Jerk Magnitude  Mean

frequency.domain Body Accelerometer Jerk Magnitude  Std

frequency.domain Body Accelerometer Jerk Magnitude  Mean  Frequency

frequency.domain Body Gyroscope  Magnitude  Mean

frequency.domain Body Gyroscope  Magnitude  Std

frequency.domain Body Gyroscope  Magnitude  Mean  Frequency

frequency.domain Body Gyroscope Jerk Magnitude  Mean

frequency.domain Body Gyroscope Jerk Magnitude  Std

frequency.domain Body Gyroscope Jerk Magnitude  Mean  Frequency

