# OnlineRcode62.R


## change to dyn.load("Simple.dll") when on windows
dyn.load("Simple.so")

SimpleCWrapper <- function(N){
	 
       out <- .C("SimpleC",
	   nc     = as.integer(N),
	   dnc    = as.double(N),
	   answer = as.double(rep(0,N))	   		   
	   )

       return(out$answer)
}
