# OnlineRcode75.R

## Read in profiler output, and create aprof class
LessNaiveLotkaAprof <- aprof("LessNaiveLotka.R","LessNaiveLotka.out")

## take a closer look at lines 11 and 14
targetedSummary(target=11,LessNaiveLotkaAprof)
targetedSummary(target=14,LessNaiveLotkaAprof)
