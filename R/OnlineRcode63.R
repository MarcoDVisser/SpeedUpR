# OnlineRcode63.R

dyn.load("Simple.dll")

SimpleCWrapper <- function(N){
	 
       out <- .C("SimpleC",
	   nc     = as.integer(N),
	   dnc    = as.double(N),
	   answer = as.double(rep(0,N))	   		   
	   )

       return(out$answer)
}
