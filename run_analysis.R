run_analysis <- function() {
  
  if (!require("reshape")) {
    install.packages("reshape")
  }
  
  require("reshape")
  
   
  #read the data files into a data frame
  X_test<-read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
  y_test<-read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
  
  X_train<-read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
  y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE)
  
  #read the following descriptor files into a data frame
  subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
  subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
  
  #read activity labels
  activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
  #read features
  features<-read.table("./UCI HAR Dataset/features.txt", header = FALSE)
  
  #1 - Merge the training and the test sets to create one data set.
  
  #bind the training and the test data
  test_data_df <- cbind(subject_test,y_test, X_test)
  train_data_df <- cbind(subject_train,y_train, X_train) 
   
  #merge the data into one df
  merged_df<-rbind(test_data_df,train_data_df)
   
  #assign meaningful names to the data frame
  colnames(merged_df) <-  c("Subject","Activity",as.character(features$V2))  
  
  #2 Extracts only the measurements on the mean and 
  #  standard deviation for each measurement.
 
  #extract only the mean and std columns
  meanCalculations <- grep("mean()", colnames(merged_df))
  sdtCalculations <- grep("std()", colnames(merged_df))
  mean_and_std_columns <- c(meanCalculations, sdtCalculations)
  
  #create new data frame with means and standard deviations
  mean_and_std_df <- merged_df[, c(1,2,mean_and_std_columns)]
  
  #3 Use descriptive activity names to name the activities 
  #  in the data set
  
  #assign proper labels to the activity 
  mean_and_std_df$Activity <- as.character(mean_and_std_df$Activity)
  for (i in 1:6){
    mean_and_std_df$Activity[mean_and_std_df$Activity == i] <- 
      as.character(activity_labels[i,2])
  }
  
  #set the activity and subjects as factors
  #Factor variables are categorical variables
  mean_and_std_df$Activity <- as.factor(mean_and_std_df$Activity)
  mean_and_std_df$Subject <- as.factor(mean_and_std_df$Subject)
  
  
  #4 Appropriately label the data set with descriptive variable names.
  names(mean_and_std_df) <- gsub("^t", "time", names(mean_and_std_df))
  names(mean_and_std_df) <- gsub("^f", "frequency", names(mean_and_std_df))
  names(mean_and_std_df) <- gsub("-mean\\(\\)", "Mean", names(mean_and_std_df))
  names(mean_and_std_df) <- gsub("-std\\(\\)", "StandardDeviation", names(mean_and_std_df))
  names(mean_and_std_df) <- gsub("-", "", names(mean_and_std_df))
  names(mean_and_std_df) <- gsub("(\\())", "", names(mean_and_std_df))
  names(mean_and_std_df) <- gsub("BodyBody", "Body", names(mean_and_std_df))
  names(mean_and_std_df) <- gsub("Acc", "Accelerator", names(mean_and_std_df))
  
  #From the data set in step 4, 
  #creates a second, independent tidy data set with the average 
  #of each variable for each activity and each subject.
  mdata <- melt(mean_and_std_df, id=c("Subject","Activity"))
  activityMeans <- cast(mdata, Subject+Activity~variable, fun.aggregate = mean)
 
  write.table(activityMeans,"activityMeans.txt", row.name=FALSE)
  
}