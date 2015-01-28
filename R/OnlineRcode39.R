# OnlineRcode39.R

set.seed(123)
system.time(noloops<-NoLoopsfastBoot(x=subBioData,R=100))
set.seed(123)
system.time(loop<-fastBoot(x=subBioData,R=100))
all.equal(as.numeric(noloops),as.numeric(loop))
