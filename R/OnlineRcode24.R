# OnlineRcode24.R


## Less naive
LessNaiveBoot<-function(x,R){
  avg<-mean(x$S) 
   
  results<-array(dim=c(R,nlevels(x$site)))
	for(i in 1:R){
  	index<-sample(seq_len(nrow(x)),replace=TRUE)
	  results[i,]<-tapply(x$S[index],x$site[index],
	  function(X) mean(X)-avg)
	}
	return(results)
}

# Save the function to a source code file
dump("LessNaiveBoot",file="LessNaiveBoot.R")
