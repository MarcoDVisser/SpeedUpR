# OnlineRcode21.R

## reload our program so everything matches up exactly 
source("NaiveBoot.R")

## Switch on R's profiler 
Rprof(file="NaiveBoot.out",line.profiling =TRUE)

## set the random seed so we can compare results
## later.
set.seed(123)

## Run NaiveBoot on a subset of data 1000 times
ResultsNB<-NaiveBoot(subBioData,subR)

## stop profiling
Rprof(append=F)
