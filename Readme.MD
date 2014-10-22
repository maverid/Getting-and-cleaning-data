
 Merges the training and the test sets to create one data set.
 #First, I read all the tables that I have to merge.
 
 #Then, I merge the data with cbind for each type of observations (test/train) 
 # and then rbind for joining test and train observations
 
 Extracts only the measurements on the mean and standard deviation for each measurement. 
 
 #Read the features.txt to find the variables that are mean and standgreard_deviation
 #I am going to find all the features with "mean()" and "std()" in their names.
 #Add two TRUE for variables: Subject and Training
 
 Uses descriptive activity names to name the activities in the data set
 #Extract the data only with the variables useful
  
 Appropriately labels the data set with descriptive variable names. 
 #Read the names of the activities to replace them in the file
 #Create a column called Id_training for join the tables. After delete.
 #Naming the variables
 
 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 #Melt the data frame with Subject and Training.
 #Write the tidy data in a file to upload to coursera
 
 
