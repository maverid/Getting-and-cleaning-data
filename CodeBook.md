## Data origin

Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


## Cases of study
These variables defines the subject of the test and the type of training. For each one, there are variables
that indicate de Mean of the values in the experiment.

Subject
Training

## Variables 
All the variables are the mean for each subject and activity.

"timeBodyAccMean-X"                            
"timeBodyAccMean-Y"                            
"timeBodyAccMean-Z"                            
"timeBodyAccStandardDeviation-X"               
"timeBodyAccStandardDeviation-Y"               
"timeBodyAccStandardDeviation-Z"               
"timeGravityAccMean-X"                         
"timeGravityAccMean-Y"                         
"timeGravityAccMean-Z"                         
"timeGravityAccStandardDeviation-X"            
"timeGravityAccStandardDeviation-Y"            
"timeGravityAccStandardDeviation-Z"            
"timeBodyAccJerkMean-X"                        
"timeBodyAccJerkMean-Y"                        
"timeBodyAccJerkMean-Z"                        
"timeBodyAccJerkStandardDeviation-X"           
"timeBodyAccJerkStandardDeviation-Y"           
"timeBodyAccJerkStandardDeviation-Z"           
"timeBodyGyroMean-X"                           
"timeBodyGyroMean-Y"                           
"timeBodyGyroMean-Z"                           
"timeBodyGyroStandardDeviation-X"              
"timeBodyGyroStandardDeviation-Y"              
"timeBodyGyroStandardDeviation-Z"              
"timeBodyGyroJerkMean-X"                       
"timeBodyGyroJerkMean-Y"                       
"timeBodyGyroJerkMean-Z"                       
"timeBodyGyroJerkStandardDeviation-X"          
"timeBodyGyroJerkStandardDeviation-Y"          
"timeBodyGyroJerkStandardDeviation-Z"          
"timeBodyAccMagMean"                           
"timeBodyAccMagStandardDeviation"              
"timeGravityAccMagMean"                        
"timeGravityAccMagStandardDeviation"           
"timeBodyAccJerkMagMean"                       
"timeBodyAccJerkMagStandardDeviation"          
"timeBodyGyroMagMean"                          
"timeBodyGyroMagStandardDeviation"             
"timeBodyGyroJerkMagMean"                      
"timeBodyGyroJerkMagStandardDeviation"         
"frequencyBodyAccMean-X"                       
"frequencyBodyAccMean-Y"                       
"frequencyBodyAccMean-Z"                       
"frequencyBodyAccStandardDeviation-X"          
"frequencyBodyAccStandardDeviation-Y"          
"frequencyBodyAccStandardDeviation-Z"          
"frequencyBodyAccMeanFrequency-X"              
"frequencyBodyAccMeanFrequency-Y"              
"frequencyBodyAccMeanFrequency-Z"              
"frequencyBodyAccJerkMean-X"                   
"frequencyBodyAccJerkMean-Y"                   
"frequencyBodyAccJerkMean-Z"                   
"frequencyBodyAccJerkStandardDeviation-X"      
"frequencyBodyAccJerkStandardDeviation-Y"      
"frequencyBodyAccJerkStandardDeviation-Z"      
"frequencyBodyAccJerkMeanFrequency-X"          
"frequencyBodyAccJerkMeanFrequency-Y"          
"frequencyBodyAccJerkMeanFrequency-Z"          
"frequencyBodyGyroMean-X"                      
"frequencyBodyGyroMean-Y"                      
"frequencyBodyGyroMean-Z"                      
"frequencyBodyGyroStandardDeviation-X"         
"frequencyBodyGyroStandardDeviation-Y"         
"frequencyBodyGyroStandardDeviation-Z"         
"frequencyBodyGyroMeanFrequency-X"             
"frequencyBodyGyroMeanFrequency-Y"             
"frequencyBodyGyroMeanFrequency-Z"             
"frequencyBodyAccMagMean"                      
"frequencyBodyAccMagStandardDeviation"         
"frequencyBodyAccMagMeanFrequency"             
"frequencyBodyBodyAccJerkMagMean"              
"frequencyBodyBodyAccJerkMagStandardDeviation"    
"frequencyBodyBodyAccJerkMagMeanFrequency"     
"frequencyBodyBodyGyroMagMean"                 
"frequencyBodyBodyGyroMagStandardDeviation"    
"frequencyBodyBodyGyroMagMeanFrequency"        
"frequencyBodyBodyGyroJerkMagMean"             
"frequencyBodyBodyGyroJerkMagStandardDeviation"     
"frequencyBodyBodyGyroJerkMagMeanFrequency"    

