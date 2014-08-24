# Convery input Samsung data into tidy data
# Sections of the code that perform these functions are labels with comments.

#1 Merges the training and the test sets to create one data set.
#2 Extracts only the measurements on the mean and standard deviation for each
#  measurement.
#3 Uses descriptive activity names to name the activities in the data set
#4 Appropriately labels the data set with descriptive variable names.
#5 Creates a second, independent tidy data set with the average of each
#  variable for each activity and each subject.


buildframe <- function(colnames, type) {
        ## merge together the information found in mulitple files
        ##      (subject, activity, collected data)
        ## in:  colnames
        ##              is a dataframe containing columns to be applied
        ##              to the data set
        ##      type
        ##              string that indicates whether the data is
        ##              training data or test data.
        ## out: dataframe containing subject, id, data
        dir <- paste0("UCI HAR Dataset\\", type)
        data <- read.table(
                paste0(dir, "\\X_", type, ".txt"),
                col.names = colnames$names,
                fill=FALSE,
                strip.white=TRUE)

        ## Read in activities identifier
        activityIDs <- read.table(
                paste0(dir, "\\y_", type, ".txt"),
                col.names = c("activityID"),
                fill=FALSE,
                strip.white=TRUE)

        ## Read in subject identifier
        subjectIDs <- read.table(
                paste0(dir, "\\subject_", type, ".txt"),
                col.names = c("subjectID"),
                fill=FALSE,
                strip.white=TRUE)

        # Combine subjects, activities, and the collected data
        combined <- cbind(subjectIDs, activityIDs, data)

        #remove all columns except ones that contain these strings
        reduced <- combined[,grep("*activityID|subjectID|std*|*mean*",
                            colnames(combined))]
}

replaceactivityidwithlabels <- function(dataframe) {
        # Merge in the textual description of activities and then remove id
        # in:   dataframe with activities identified by an id (numbers)
        # out:  datatframe - activities indicated by labels and ids removed

        #read in activity labels
        act_labels <- read.table("UCI HAR Dataset\\activity_labels.txt",
                                 col.names = c("activityID", "activity"),
                                 fill=FALSE,
                                strip.white=TRUE)

        # Merge the activity labels with the data
        mergeddata <- merge(act_labels, dataframe,
                       by="activityID", sort=FALSE)
        # remove activity id
        mergeddatawithlabels <- mergeddata[, -1]
}

betternames <- function(testtrain) {
        # Improve names of dataframe
        # in:   testtrain
        #       datatframe that is the combination of the
        #       testing and training data
        # out:  datatframe with abbreviations expanded
        #       to longer (more meaningful names),
        #       and puncuation characters removed.
        colnames <- colnames(testtrain)
        colnames <- gsub("-", "", colnames)
        colnames <- gsub("std", "StandardDeviation", colnames)
        colnames <- gsub("Freq", "Frequency", colnames)
        colnames <- gsub("Gyro", "Gyroscope", colnames)
        colnames <- gsub("Mag", "Magnitude", colnames)
        colnames <- gsub("mean", "Mean", colnames)
        colnames <- gsub("Acc", "Acceleration", colnames)
        colnames <- gsub("^f", "FFT", colnames)
        colnames <- gsub("^t", "", colnames)
        colnames <- gsub("(\\())", "", colnames)
        colnames <- gsub("(\\.)", "", colnames)
        colnames(testtrain) <- colnames
        testtrain
}

# Read in the column names that apply to the data set.
colnames <- read.table("UCI HAR Dataset\\features.txt",
                       col.names = c("id", "names"),
                       fill=FALSE,
                       strip.white=TRUE)
# -> 1
# -> 2
# Collect and combine data
# Extracts only the measurements on the mean and standard deviation for each measurement
testtrain <- rbind(buildframe(colnames, "test"), buildframe(colnames, "train"))

# -> 3
# Uses descriptive activity names to name the activities in the data set
finaltesttrain <- replaceactivityidwithlabels(testtrain)

# -> 4
#Appropriately labels the data set with descriptive variable names
pretty <- betternames(finaltesttrain)
write.table(pretty,
            file="tidydataset.txt",
            row.name=FALSE)

# -> 5
###########################      Change labels to indicate avereage
# Create an independent tidy data set with the average of each variable
# for each activity and each subject.
activitysubjectaveragevar <- aggregate(. ~ activity + subjectID, pretty, mean)

# Save data set without row names.
write.table(activitysubjectaveragevar,
            file="activitysubjectaveragevar.txt",
            row.name=FALSE)
