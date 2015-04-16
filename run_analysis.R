run_analysis <- function() {
  
  if (!require("data.table")) {
    install.packages("data.table")
  }
  require("data.table")
  
  #read the following data files into a data frame
  #./test/X_test.txt
  #./test/Y_test.txt
  #./train/X_train.txt
  #./train/Y_train.txt
  
  X_test<-read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE,
                     col.names=c("MeasureName")
  y_test<-read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE,
                     col.names=c("ActivityID"))
  
  X_train<-read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE,
                      col.names=c("MeasureName")
  y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE,
                    col.names=c("ActivityID"))
  
  #read the following descriptor files into a data frame
  subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE,
                           col.names=c("SubjectID"))
  subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE,
                           col.names=c("SubjectID"))
  
  #read activity labels
  activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
  #read features
  features<-read.table("./UCI HAR Dataset/features.txt", header = FALSE)
  
  #bind the training and the test data
  test_df <- cbind(as.data.table(subject_test), y_test, X_test)
  train_df <- cbind(as.data.table(subject_train), y_train, X_train)
  
  head(train_df)
  
  
  
  
  
  
}