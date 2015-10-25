# Human Activity Recognition CodeBook"

#### Data Transformations

All transormations were performed by the script run_analysis.R.

The source material was transformed as follows:

1. Test data files were appended to their training equivalents
2. The combined test and training data frames were bound to make one data frame
3. The feature list was made more descriptive (see below) and added to the data frame as column names
4. Activity codes were replaced by their labels
5. The mean of each feature per Subject per Activity


The file "HARMeans.txt" was produced using the following code:

```{r, eval = FALSE}
write.table(means, "~/HARMeans.txt", row.name = FALSE)
```

To read the file use read.table()

```{r, eval = FALSE}
read.table("~/HARMeans.txt", header = TRUE)
```

The file contains 180 observations of 86 mean and standard deviation variables, with 6 mean values per the 30 subject. It is in the wide format, maintaining the order of the columns as found in the source file.

***

#### Feature List Name Cleanse

To make the feature names easier to interpret some of the generic terms were replaced and the text was formatted in camel case to make it easier to read.

Feature text | Replacement
------------ | -----------
mean         | Mean
std          | StdDev
Acc          | Accelerometer
Gyro         | Gyroscope
Mag          | Magnitude
-            | *null*
()           | *null*

***

#### Tidy Data Set Fields

 [1] "Subject"                                            
 [2] "Activity"                                           
 [3] "MeanTimeBodyAccelerometerMeanX"                     
 [4] "MeanTimeBodyAccelerometerMeanY"                     
 [5] "MeanTimeBodyAccelerometerMeanZ"                     
 [6] "MeanTimeBodyAccelerometerStdDevX"                   
 [7] "MeanTimeBodyAccelerometerStdDevY"                   
 [8] "MeanTimeBodyAccelerometerStdDevZ"                   
 [9] "MeanTimeGravityAccelerometerMeanX"                  
[10] "MeanTimeGravityAccelerometerMeanY"                  
[11] "MeanTimeGravityAccelerometerMeanZ"                  
[12] "MeanTimeGravityAccelerometerStdDevX"                
[13] "MeanTimeGravityAccelerometerStdDevY"                
[14] "MeanTimeGravityAccelerometerStdDevZ"                
[15] "MeanTimeBodyAccelerometerJerkMeanX"                 
[16] "MeanTimeBodyAccelerometerJerkMeanY"                 
[17] "MeanTimeBodyAccelerometerJerkMeanZ"                 
[18] "MeanTimeBodyAccelerometerJerkStdDevX"               
[19] "MeanTimeBodyAccelerometerJerkStdDevY"               
[20] "MeanTimeBodyAccelerometerJerkStdDevZ"               
[21] "MeanTimeBodyGyroscopeMeanX"                         
[22] "MeanTimeBodyGyroscopeMeanY"                         
[23] "MeanTimeBodyGyroscopeMeanZ"                         
[24] "MeanTimeBodyGyroscopeStdDevX"                       
[25] "MeanTimeBodyGyroscopeStdDevY"                       
[26] "MeanTimeBodyGyroscopeStdDevZ"                       
[27] "MeanTimeBodyGyroscopeJerkMeanX"                     
[28] "MeanTimeBodyGyroscopeJerkMeanY"                     
[29] "MeanTimeBodyGyroscopeJerkMeanZ"                     
[30] "MeanTimeBodyGyroscopeJerkStdDevX"                   
[31] "MeanTimeBodyGyroscopeJerkStdDevY"                   
[32] "MeanTimeBodyGyroscopeJerkStdDevZ"                   
[33] "MeanTimeBodyAccelerometerMagnitudeMean"             
[34] "MeanTimeBodyAccelerometerMagnitudeStdDev"           
[35] "MeanTimeGravityAccelerometerMagnitudeMean"          
[36] "MeanTimeGravityAccelerometerMagnitudeStdDev"        
[37] "MeanTimeBodyAccelerometerJerkMagnitudeMean"         
[38] "MeanTimeBodyAccelerometerJerkMagnitudeStdDev"       
[39] "MeanTimeBodyGyroscopeMagnitudeMean"                 
[40] "MeanTimeBodyGyroscopeMagnitudeStdDev"               
[41] "MeanTimeBodyGyroscopeJerkMagnitudeMean"             
[42] "MeanTimeBodyGyroscopeJerkMagnitudeStdDev"           
[43] "MeanFrequencyBodyAccelerometerMeanX"                
[44] "MeanFrequencyBodyAccelerometerMeanY"                
[45] "MeanFrequencyBodyAccelerometerMeanZ"                
[46] "MeanFrequencyBodyAccelerometerStdDevX"              
[47] "MeanFrequencyBodyAccelerometerStdDevY"              
[48] "MeanFrequencyBodyAccelerometerStdDevZ"              
[49] "MeanFrequencyBodyAccelerometerMeanFreqX"            
[50] "MeanFrequencyBodyAccelerometerMeanFreqY"            
[51] "MeanFrequencyBodyAccelerometerMeanFreqZ"            
[52] "MeanFrequencyBodyAccelerometerJerkMeanX"            
[53] "MeanFrequencyBodyAccelerometerJerkMeanY"            
[54] "MeanFrequencyBodyAccelerometerJerkMeanZ"            
[55] "MeanFrequencyBodyAccelerometerJerkStdDevX"          
[56] "MeanFrequencyBodyAccelerometerJerkStdDevY"          
[57] "MeanFrequencyBodyAccelerometerJerkStdDevZ"          
[58] "MeanFrequencyBodyAccelerometerJerkMeanFreqX"        
[59] "MeanFrequencyBodyAccelerometerJerkMeanFreqY"        
[60] "MeanFrequencyBodyAccelerometerJerkMeanFreqZ"        
[61] "MeanFrequencyBodyGyroscopeMeanX"                    
[62] "MeanFrequencyBodyGyroscopeMeanY"                    
[63] "MeanFrequencyBodyGyroscopeMeanZ"                    
[64] "MeanFrequencyBodyGyroscopeStdDevX"                  
[65] "MeanFrequencyBodyGyroscopeStdDevY"                  
[66] "MeanFrequencyBodyGyroscopeStdDevZ"                  
[67] "MeanFrequencyBodyGyroscopeMeanFreqX"                
[68] "MeanFrequencyBodyGyroscopeMeanFreqY"                
[69] "MeanFrequencyBodyGyroscopeMeanFreqZ"                
[70] "MeanFrequencyBodyAccelerometerMagnitudeMean"        
[71] "MeanFrequencyBodyAccelerometerMagnitudeStdDev"      
[72] "MeanFrequencyBodyAccelerometerMagnitudeMeanFreq"    
[73] "MeanFrequencyBodyAccelerometerJerkMagnitudeMean"    
[74] "MeanFrequencyBodyAccelerometerJerkMagnitudeStdDev"  
[75] "MeanFrequencyBodyAccelerometerJerkMagnitudeMeanFreq"
[76] "MeanFrequencyBodyGyroscopeMagnitudeMean"            
[77] "MeanFrequencyBodyGyroscopeMagnitudeStdDev"          
[78] "MeanFrequencyBodyGyroscopeMagnitudeMeanFreq"        
[79] "MeanFrequencyBodyGyroscopeJerkMagnitudeMean"        
[80] "MeanFrequencyBodyGyroscopeJerkMagnitudeStdDev"      
[81] "MeanFrequencyBodyGyroscopeJerkMagnitudeMeanFreq"    
[82] "MeanAngleTimeBodyAccelerometerMean,Gravity"         
[83] "MeanAngleTimeBodyAccelerometerJerkMean,GravityMean" 
[84] "MeanAngleTimeBodyGyroscopeMean,GravityMean"         
[85] "MeanAngleTimeBodyGyroscopeJerkMean,GravityMean"     
[86] "MeanAngleX,GravityMean"                             
[87] "MeanAngleY,GravityMean"                             
[88] "MeanAngleZ,GravityMean"
