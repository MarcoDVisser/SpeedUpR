# OnlineRcode74.R

source("LessNaiveLotka.R")

## Switch on R's profiler 
Rprof(file="LessNaiveLotka.out",line.profiling =TRUE)

## Set seed so we can reproduce our results
set.seed(1)

## Run NaiveLotka to start our simulation
ResultsLessNaive<-LessNaiveLotka()

## stop profiling
Rprof(append=F)
