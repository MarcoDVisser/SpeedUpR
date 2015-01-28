## OnlineRcode81.R

## Rerun with more simulations so we get enough samples.
N=100000

## Pre-allocate
population <- matrix(c(numeric(N),numeric(N),1:N),
					ncol=3,nrow=N,byrow=F)

## Set initial population
population[1,] <- c(1,1,1)

## Reset seed and start simulation
set.seed(1)

## Switch on R's profiler 
Rprof(file="LongMatrixLotka.out",line.profiling =TRUE)

## Run MatrixLotka
ResultsMatrix<-MatrixLotka()

## Stop profiling
Rprof(append=F)
