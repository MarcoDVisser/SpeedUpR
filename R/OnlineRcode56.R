# OnlineRcode56.R


## Less naive
ffBoot<-function(x,R,N=N){
  avg<-mean(x$S) 
  results<-array(dim=c(R,nlevels(x$site)))
	
  for(i in 1:R){
  results[i,]<-sapply(levels(x$site),function(X) 
  mean(x$S[ffBiodata$site==X][sample(1:N,replace=TRUE)])-avg)
   }
	
  return(results)
}

# Save the function to a source code file
dump("ffBoot",file="ffBoot.R")
