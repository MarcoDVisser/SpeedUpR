# OnlineRcode70.R

## Make an aprof object
NaiveLotkaAprof <- aprof("NaiveLotka.R","NaiveLotka.out")

## Plot the execution time per line
plot(NaiveLotkaAprof)
