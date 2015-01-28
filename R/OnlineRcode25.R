# OnlineRcode25.R

## reload our saved file
source("LessNaiveBoot.R")

set.seed(123) # set seed for results comparison

# Profile the program
Rprof(file="LessNaiveBoot.out",line.profiling =TRUE)
ResultsLNB<-LessNaiveBoot(subBioData,subR)
Rprof(append=F)

# make an aprof object
LessNaiveBootAprof <- aprof("LessNaiveBoot.R","LessNaiveBoot.out")

# Summarize the gains
summary(LessNaiveBootAprof)
