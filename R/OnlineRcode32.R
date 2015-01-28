# OnlineRcode32.R

## reload our saved file
source("fastBoot.R")

set.seed(123) # set seed for results comparison

# Profile the program
Rprof(file="fastBoot.out",line.profiling =TRUE)
ResultsFB<-fastBoot(subBioData,subR)
Rprof(append=F)

## test if results are equal
all.equal(as.numeric(ResultsNB),as.numeric(ResultsFB))
## TRUE

# make an aprof object
fastBootAprof <- aprof("fastBoot.R","fastBoot.out")

# Summarize the gains
summary(fastBootAprof)
