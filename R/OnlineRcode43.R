# OnlineRcode43.R

require(parallel)

## number of workers
ncores<-2

## make an object to save the output from each child process
children<-vector("list", ncores)

# change the random number generator 
RNGkind("L'Ecuyer-CMRG")

## set an initial seed
set.seed(20130808)

## The following will make runs from mcparallel reproducible
mc.reset.stream()

## initialize each child process     
for(i in 1:ncores){
	children[[i]]<-mcparallel(rnorm(4))
}

# collect results
randomnumbers<-parallel::mccollect(children)
