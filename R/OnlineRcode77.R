## OnlineRcode77.R

## reload our program so everything matches up exactly 
source("MatrixLotka.R")

## Load Amdahl's profiler
require(aprof)

## Switch on R's profiler 
Rprof(file="MatrixLotka.out",line.profiling =TRUE)

## reset seed and start simulation
set.seed(1)

## Run MatrixLotka 
ResultsMatrix<-MatrixLotka()

## stop profiling
Rprof(append=F)
