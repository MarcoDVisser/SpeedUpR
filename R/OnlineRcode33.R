# OnlineRcode33.R

## reload our saved file
source("fastBoot.R")

# make an aprof object
fastBootAprof <- aprof("fastBoot.R","fastBoot.out")

# Summarize the gains
summary(fastBootAprof)
