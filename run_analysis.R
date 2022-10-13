
# installing packages
install.packages("tidyverse")
library(tidyverse)

# Download file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Data.zip")

# Apply names to the columns of each train data set
names(X_train) <- features[,2]
names(X_test) <- features[,2]
names(y_train) <- "outcome"
names(y_test) <- "outcome"
names(subject_train) <- "id"
names(subject_test) <- "id"

# combine Y to train and test data sets
train <- cbind(subject_train,y_train, X_train)
test <- cbind(subject_test,y_test, X_test)

# combine train an test data sets
data <- rbind(train, test)

# lower names for the data set 
names(data) <- tolower(names(data))

# remove meanfreq from the data set
remove_cols <- grep("-meanfreq()", colnames(data))
data <- data[, -c(remove_cols)]

# find only columns that contains the means
data_means <- data[, grep("-mean()", colnames(data))]
data_sd <- data[, grep("std", colnames(data))]

# data set containing id, outcome, and mean and std measure
data <- cbind(data[,c(1,2)], data_means, data_sd)

# removing "()" from names columns
colnames(data) <- sub("()","", names(data))


# fixing character vectors 
strsplit(names(data), "\\,")

# find only columns that contains the means
data_means <- data[, grep("mean", colnames(data))]
data_sd <- data[, grep("std", colnames(data))]

# data st containing inly variables use in the analysis 
data <- cbind(data_means, data_sd)
# Cleaning features 
# col_names <- features[,2]
# splitNames <- strsplit(col_names, "\\()")
# firstElement <- function(x){x[1]}
# col_names <-sapply(splitNames, firstElement)
