# OnlineRcode67.R

NaiveLotka<-function(T	 	= N,
                     am		= alpha.means,
                     as		= alpha.sd,
                     rm		= r.means, 
                     rs		= r.sd, 
                     K		= CarryingCapacity){

  pop<-data.frame(SP1=1,SP2=1,time=1)
  for(i in 2:T){
    SP1<-pop$SP1[i-1]*rnorm(1,rm[1],rs[1])*
      (1-(pop$SP1[i-1]+(rnorm(1,am[2],as[2])*pop$SP2[i-1]))/K)
    SP2<-pop$SP2[i-1]*rnorm(1,rm[2],rs[2])*
      (1-(pop$SP2[i-1]+(rnorm(1,am[1],as[1])*pop$SP1[i-1]))/K)
    pop<-rbind(pop,c(SP1,SP2,i))
  }
  
  return(pop)
}

## Save the function to a source code file for profiling
dump("NaiveLotka",file="NaiveLotka.R")
