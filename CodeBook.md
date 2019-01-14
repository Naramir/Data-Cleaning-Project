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

timeDomain Body Accelerometer  Mean X

timeDomain Body Accelerometer  Mean Y

timeDomain Body Accelerometer  Mean Z

timeDomain Body Accelerometer  Std X

timeDomain Body Accelerometer  Std Y

timeDomain Body Accelerometer  Std Z

timeDomain Gravity Accelerometer  Mean X

timeDomain Gravity Accelerometer  Mean Y

timeDomain Gravity Accelerometer  Mean Z

timeDomain Gravity Accelerometer  Std X

timeDomain Gravity Accelerometer  Std Y

timeDomain Gravity Accelerometer  Std Z

timeDomain Body Accelerometer Jerk Mean X

timeDomain Body Accelerometer Jerk Mean Y

timeDomain Body Accelerometer Jerk Mean Z

timeDomain Body Accelerometer Jerk Std X

timeDomain Body Accelerometer Jerk Std Y

timeDomain Body Accelerometer Jerk Std Z

timeDomain Body Gyroscope  Mean X

timeDomain Body Gyroscope  Mean Y

timeDomain Body Gyroscope  Mean Z

timeDomain Body Gyroscope  Std X

timeDomain Body Gyroscope  Std Y

timeDomain Body Gyroscope  Std Z

timeDomain Body Gyroscope Jerk Mean X

timeDomain Body Gyroscope Jerk Mean Y

timeDomain Body Gyroscope Jerk Mean Z

timeDomain Body Gyroscope Jerk Std X

timeDomain Body Gyroscope Jerk Std Y

timeDomain Body Gyroscope Jerk Std Z

timeDomain Body Accelerometer  Magnitude  Mean 

timeDomain Body Accelerometer  Magnitude  Std 

timeDomain Gravity Accelerometer  Magnitude  Mean 

timeDomain Gravity Accelerometer  Magnitude  Std 

timeDomain Body Accelerometer Jerk Magnitude  Mean 

timeDomain Body Accelerometer Jerk Magnitude  Std 

timeDomain Body Gyroscope  Magnitude  Mean 

timeDomain Body Gyroscope  Magnitude  Std 

timeDomain Body Gyroscope Jerk Magnitude  Mean 

timeDomain Body Gyroscope Jerk Magnitude  Std 

frequencyDomain Body Accelerometer  Mean X

frequencyDomain Body Accelerometer  Mean Y

frequencyDomain Body Accelerometer  Mean Z

frequencyDomain Body Accelerometer  Std X

frequencyDomain Body Accelerometer  Std Y

frequencyDomain Body Accelerometer  Std Z

frequencyDomain Body Accelerometer  Mean  Frequency X

frequencyDomain Body Accelerometer  Mean  Frequency Y

frequencyDomain Body Accelerometer  Mean  Frequency Z

frequencyDomain Body Accelerometer Jerk Mean X

frequencyDomain Body Accelerometer Jerk Mean Y

frequencyDomain Body Accelerometer Jerk Mean Z

frequencyDomain Body Accelerometer Jerk Std X

frequencyDomain Body Accelerometer Jerk Std Y

frequencyDomain Body Accelerometer Jerk Std Z

frequencyDomain Body Accelerometer Jerk Mean  Frequency X

frequencyDomain Body Accelerometer Jerk Mean  Frequency Y

frequencyDomain Body Accelerometer Jerk Mean  Frequency Z

frequencyDomain Body Gyroscope  Mean X

frequencyDomain Body Gyroscope  Mean Y

frequencyDomain Body Gyroscope  Mean Z

frequencyDomain Body Gyroscope  Std X

frequencyDomain Body Gyroscope  Std Y

frequencyDomain Body Gyroscope  Std Z

frequencyDomain Body Gyroscope  Mean  Frequency X

frequencyDomain Body Gyroscope  Mean  Frequency Y

frequencyDomain Body Gyroscope  Mean  Frequency Z

frequencyDomain Body Accelerometer  Magnitude  Mean 

frequencyDomain Body Accelerometer  Magnitude  Std 

frequencyDomain Body Accelerometer  Magnitude  Mean  Frequency 

frequencyDomain Body Accelerometer Jerk Magnitude  Mean 

frequencyDomain Body Accelerometer Jerk Magnitude  Std 

frequencyDomain Body Accelerometer Jerk Magnitude  Mean  Frequency 

frequencyDomain Body Gyroscope  Magnitude  Mean 

frequencyDomain Body Gyroscope  Magnitude  Std 

frequencyDomain Body Gyroscope  Magnitude  Mean  Frequency

frequencyDomain Body Gyroscope Jerk Magnitude  Mean

frequencyDomain Body Gyroscope Jerk Magnitude  Std

frequencyDomain Body Gyroscope Jerk Magnitude  Mean  Frequency 

