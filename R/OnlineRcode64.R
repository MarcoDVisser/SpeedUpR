# OnlineRcode64.R

system.time(Canswers<-SimpleCWrapper(1e6))
system.time(Ranswers<-SimpleR(1e6))
identical(Canswers,Ranswers)
