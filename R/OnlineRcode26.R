# OnlineRcode26.R

## reload our saved file
source("LessNaiveBoot.R")

# make an aprof object
LessNaiveBootAprof <- aprof("LessNaiveBoot.R","LessNaiveBoot.out")

# Summarize the gains
summary(LessNaiveBootAprof)
