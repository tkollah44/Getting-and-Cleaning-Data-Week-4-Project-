library(tidyverse)
# remote file
remote_data_file <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#local dir
uci_ds_path <- "UCI\ HAR\ Dataset/"

# File unzip verification. If the directory does not exist, unzip the downloaded file.
if(!file.exists(uci_ds_path)){
  temp <- tempfile()
  download.file(remote_data_file,temp)
  unzip(temp)  
}

activities_path <- paste(uci_ds_path,"activity_labels.txt", sep = "") 
features_path <- paste(uci_ds_path,"features.txt", sep = "") 

# path to test data
subject_test_path <- paste(uci_ds_path,"test/subject_test.txt", sep = "") 
x_test_path <- paste(uci_ds_path,"test/X_test.txt", sep = "") 
y_test_path <- paste(uci_ds_path,"test/y_test.txt", sep = "") 

# path to train data
subject_train_path <- paste(uci_ds_path,"train/subject_train.txt", sep = "") 
x_train_path <- paste(uci_ds_path,"train/X_train.txt", sep = "") 
y_train_path <- paste(uci_ds_path,"train/y_train.txt", sep = "") 

activities <- read_table(activities_path, col_names = c("ActivityID", "ActivityName"))
features <- read_delim(features_path, delim=" ", col_names = c("FeatureId", "FeatureName"))
subject_test <- read_table(subject_test_path, col_names = c("SubjectID"))
# read_table is better than read_delim for column separated by spaces
x_test <-  read_table(x_test_path, col_names = as.character(features$FeatureName))
y_test <-  read_table(y_test_path, col_names = c("ActivityID"))

subject_train <- read_table(subject_train_path, col_names = c("SubjectID"))
x_train <-  read_table(x_train_path, col_names = as.character(features$FeatureName))
y_train <-  read_table(y_train_path, col_names = c("ActivityID"))

test_df <- bind_cols(subject_test, y_test, x_test)
train_df <- bind_cols(subject_train, y_train, x_train)

activities_tbl <- bind_rows(test_df, train_df)  %>% 
                    inner_join(activities)      %>% 
                    select(SubjectID, ActivityName, contains("mean"), contains("std"), -starts_with("angle"))

#TODO use another method to rename columns
activities_tbl_new_names <- activities_tbl %>% 
                              setNames(gsub("^f", "FrequencyDomain", names(.))) %>%
                              setNames(gsub("^t", "TimeDomain", names(.))) %>%
                              setNames(gsub("Acc", "Accelerometer", names(.))) %>% 
                              setNames(gsub("Gyro", "Gyroscope", names(.))) %>%
                              setNames(gsub("Mag", "Magnitude", names(.))) %>% 
                              setNames(gsub("mean\\.\\.", "Mean", names(.))) %>% 
                              setNames(gsub("std\\.\\.", "Std", names(.))) %>% 
                              setNames(gsub("\\.", "", names(.))) %>%
                              setNames(gsub("[()]", "", names(.)))

activities_final_tbl <- activities_tbl_new_names %>%
                          group_by(SubjectID, ActivityName) %>%
                          summarize_all(funs(mean))


write.table(activities_final_tbl, file = "summarized-data.txt", row.name = FALSE)
print(activities_tbl)
