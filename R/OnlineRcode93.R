## OnlineRcode93.R

N=10000

## reset seed and start simulation
set.seed(1)

ByteCompileLotka<-compiler::cmpfun(MatrixLotka)

## Time its execution 
system.time(ResultsByteCompile <- ByteCompileLotka())

## user  system elapsed 
##  0.180   0.000   0.179 
