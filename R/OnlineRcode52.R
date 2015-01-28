# OnlineRcode52.R

## Write the data to the disk
write.table(BioData, file = "biodata.txt", sep=";", row.names=FALSE)

## load packages and create a ff object.
require(ff)
require(ffbase)
ffBioData <- read.table.ffdf(file="biodata.txt", 
                             sep=";", header=TRUE, 
                             colClasses=c("numeric","factor"))
