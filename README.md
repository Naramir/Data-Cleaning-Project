This is a README document explaining the operation of the included scripts.

Source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script, run_analysis.R, does the following:

    Downloads the dataset if it does not already exist in the working directory
    
    Loads the activities and features
    
    Subsets variables containing "mean" or "std" from the features
    
    Adjusts the names of the variables in this subset and corrects typos
    
    Creates a character containing names of the all variables (including two identifiers: Subject and Activities)
    
    Loads both the training and test datasets, and creates a subset of only those columns which reflect a mean or a standard deviation
    
    Loads the activity and subject data for each dataset, and binds those columns with the dataset   
    
    Merges the two datasets
    
    Adds appropriate names to the variables in the resulting dataset
    
    Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
    
    Orders the tidy dataset first by subject and then by activity
    
    Creates a txt file containing the tidy dataset

The tidy dataset is contained in the tidydata.txt
