# OnlineRcode44.R

## reset an initial seed
set.seed(20130808)
mc.reset.stream()

## re-initialize each child process     
    for(i in 1:ncores){
	children[[i]]<-mcparallel(rnorm(4))
	}

## collect results
randomnumbers2<-parallel::mccollect(children)
