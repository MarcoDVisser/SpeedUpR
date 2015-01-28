# OnlineRcode19.R

##Naive bootstrap function in R
NaiveBoot<-function(x,R){  
  results<-NULL
	for(i in 1:R){
  	index<-sample(seq_len(nrow(x)),replace=TRUE)
	  results<-rbind(results,
	  tapply(x$S[index],x$site[index],
	  function(X) mean(X)-mean(x)))
	}
	return(results)
}

##Save the function to a source code file
dump("NaiveBoot",file="NaiveBoot.R")
