# OnlineRcode22.R

## Load Amdahl's profiler
require(aprof)

## make an object of the aprof class
NaiveBootAprof <- aprof("NaiveBoot.R","NaiveBoot.out")

## Plot the execution time per line
plot(NaiveBootAprof)
