# OnlineRcode37.R

NoLoopsfastBoot <- function(x, R) {
  avg<-mean(x$S)
  t(replicate(R, {
 	 index <- sample(seq_len(nrow(x)), replace=TRUE)
  	tapply(x$S[index], x$site[index],  
  		function(X) mean.default(X)-avg)
    }))
}
