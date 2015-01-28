# OnlineRcode47.R

## load the parallel package
require(parallel)

## save the start time
tp0 <- structure(.Internal(Sys.time()))

## initialize a list where we can store the id of each child
children<-vector("list", ncores)

## send the division of work in splitR to each of the cores
for(i in 1:ncores){
	children[[i]] <- mcparallel(fastBoot(subBioData,
				    splitR[i]))
}

## Wait for the child processes named in "children" to finish
results <- mccollect(children)

## Record end time
tp1 <- structure(.Internal(Sys.time()))

## Calculate execution time
tp <- tp1-tp0
