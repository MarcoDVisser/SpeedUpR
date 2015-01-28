# OnlineRcode49.R

## load the parallel package
require(parallel)

##initialize the problem
subR<-1000

## Set the number of workers we will use
ncores<-3

## Split the jobs
splitR<-table(cut(1:subR,ncores,labels=F))

## save the start time
tp0 <- structure(.Internal(Sys.time()))

## send the division of work in splitR to each of the cores
results <- mclapply(splitR,function(X) 
		 fastBoot(subBioData,X))

## Record end time
tp1 <- structure(.Internal(Sys.time()))

## Calculate execution time
tp <- tp1-tp0
