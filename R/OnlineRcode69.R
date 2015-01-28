# OnlineRcode69.R

## Load Amdahl's profiler
require(aprof)

## make an aprof object
NaiveLotkaAprof <- aprof("NaiveLotka.R","NaiveLotka.out")

## Plot the execution time per line
plot(NaiveLotkaAprof)
