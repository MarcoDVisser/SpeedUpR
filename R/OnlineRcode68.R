# OnlineRcode68.R

## reload our program so everything matches up exactly 
source("NaiveLotka.R")

## Switch on R's profiler 
Rprof(file="NaiveLotka.out",line.profiling =TRUE)

## Set seed so we can reproduce our resulst
set.seed(1)

## Run NaiveLotka to start our simulation
ResultsNaive<-NaiveLotka()

## stop profiling
Rprof(append=F)
