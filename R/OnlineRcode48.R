# OnlineRcode48.R

require(parallel)

## number of workers
ncores<-2

## set an original seed
set.seed(20130808)
mclapply(rep(4,ncores),rnorm)

## reset the original seed
set.seed(20130808)
mclapply(rep(4,ncores),rnorm)
