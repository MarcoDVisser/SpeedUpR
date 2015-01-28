## OnlineRcode18.R

R<-10000 # number of bootstrap resamples

require(boot)

SiteMeans<-function(x,d,){
  tapply(x$S[d],x$site[d],mean)-mean(x)
}

BtResults<-boot(BioData,SiteMeans,R)
