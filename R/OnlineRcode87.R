## OnlineRcode87.R



## create shared object, windows users should remember
## to use OurCFunction.dll
system("R CMD SHLIB -o OurCFunction.so OurCFunction.c")

## load shared object
dyn.load("OurCFunction.so")

## set seed
set.seed(1)

## Execute our function
.Call("OurCFunction",A = as.double(0),B = as.double(1))

## test it with the equivalent R function
set.seed(1)
rnorm(1)
