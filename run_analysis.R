######### Run_analysis ###############
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
###########

run_analysis <- function(){
  require("plyr")
  require("reshape2")
 
  #First, I read all the tables that I have to merge.
  x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  
  #Then, I merge the data with cbind for each type of observations (test/train) 
  # and then rbind for joining test and train observations
  mergeData <- rbind(cbind(subject_test, y_test, x_test),cbind(subject_train, y_train, x_train))

  
  #Read the features.txt to find the variables that are mean and standgreard_deviation
  #I am going to find all the features with "mean()" and "std()" in their names.
  
  features <- read.table("./UCI HAR Dataset/features.txt")
  mean_or_std <- grepl("mean()",features[,2]) | grepl("std()",features[,2])
  
  #Add two TRUE for variables: Subject and Training
  variablesUseful <- c(TRUE,TRUE,mean_or_std)
  
  #Extract the data only with the variables useful
  extractedData <- mergeData[,variablesUseful]
  
  #Read the names of the activities to replace them in the file
  #Create a column called Id_training for join the tables. After delete.
  activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
  colnames(extractedData)[2] <- "Id_Training"
  colnames(activities)[1]<- "Id_Training"
  extractedData <- join(extractedData, activities, by="Id_Training")
  extractedData$Id_Training <- NULL
  
  
  #Naming the variables
  colnames(extractedData) <- c("Subject", as.character(features[,2][mean_or_std]), "Training")
  #Modify the name of the variables to make them more comprensible
  colnames(extractedData) = gsub("()","", colnames(extractedData), fixed=TRUE)
  colnames(extractedData) = gsub("-mean","Mean", colnames(extractedData), fixed=TRUE)
  colnames(extractedData) = gsub("-std","StandardDeviation", colnames(extractedData), fixed=TRUE)
  colnames(extractedData) = gsub("Freq","Frequency", colnames(extractedData), fixed=TRUE)
  colnames(extractedData) = gsub("tBody","timeBody", colnames(extractedData), fixed=TRUE)
  colnames(extractedData) = gsub("tGravity","timeGravity", colnames(extractedData), fixed=TRUE)
  colnames(extractedData) = gsub("fBody","frequencyBody", colnames(extractedData), fixed=TRUE)

  
  #Melt the data frame with Subject and Training.
  dataMelt <- melt(extractedData, id.vars=c("Subject", "Training"))
  tidy_data = dcast(dataMelt, Subject + Training ~ variable, mean)
  
  #Write the tidy data in a file to upload to coursera
  write.table(tidy_data, "tidy.txt", row.name=FALSE)
  
  
}
