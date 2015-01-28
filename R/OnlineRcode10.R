## OnlineRcode10.R

##Rcode22.R
x<-c(1, 2, NA)
DefuaultMean<-mean(x, na.rm=TRUE)
CustomMean<-avg(x, na.rm=TRUE)
identical(DefuaultMean,CustomMean)
