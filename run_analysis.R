# in <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
out <- "project.zip"
#download.file(in, destfile=out)
unzip
#
# These are the column names
colnames = read.table("UCI HAR Dataset\\features.txt",
               fill=FALSE,
               strip.white=TRUE)
tr_data = read.table("UCI HAR Dataset\\train\\X_train.txt",
               fill=FALSE,
               strip.white=TRUE)
colnames(tr_data)<-colnames[,"V2"]

activity_ids = read.table("UCI HAR Dataset\\train\\y_train.txt",
                          fill=FALSE,
                          strip.white=TRUE)
colnames(activity_ids)<-c("activity_id")

subject_ids = read.table("UCI HAR Dataset\\train\\subject_train.txt",
                          fill=FALSE,
                          strip.white=TRUE)
colnames(subject_ids)<-c("subject_id")

temp <- cbind(subject_ids,activity_ids,tr_data)
act_labels = read.table("UCI HAR Dataset\\activity_labels.txt",
                        fill=FALSE,
                        strip.white=TRUE)
colnames(act_labels) <- c("activity_id", "activity")
temp2 = merge(act_labels,temp,by.y="activity_id",by.x="activity_id",sort=FALSE)
#remove meanFreq
t2<-temp2[,grep("*std*|subject_id|*mean*|V2", t)]
#tex = read.table("UCI HAR Dataset\\test\\X_test.txt",
#               fill=FALSE,
#               strip.white=TRUE)
#tey = read.table("UCI HAR Dataset\\test\\Y_test.txt",
#               fill=FALSE,
#               strip.white=TRUE)
str(t2)
write.table(t2, file="projectoutput.txt")
#colnames(a)<-b[,"V2"]
