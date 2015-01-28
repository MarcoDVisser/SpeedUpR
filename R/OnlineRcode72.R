# OnlineRcode72.R

N=10000
 #start with pre-allocating the end results in the memory
 population <- data.frame(SP1=numeric(N),SP2=numeric(N),T=1:N)
 #set initial population
 population[1,] <- c(1,1,1)
 #define new function
 LessNaiveLotka<-function( T   = N,
                           pop = population,
                           am  = alpha.means,
                           as  = alpha.sd,
                           rm  = r.means,
                           rs  = r.sd,
                           K   = CarryingCapacity){
  
    for(i in 2:T){
      pop$SP1[i]<-pop$SP1[i-1]*rnorm(1,rm[1],rs[1])*
        (1-(pop$SP1[i-1]+(rnorm(1,am[2],as[2])*pop$SP2[i-1]))/K)
  
      pop$SP2[i]<-pop$SP2[i-1]*rnorm(1,rm[2],rs[2])*
        (1-(pop$SP2[i-1]+(rnorm(1,am[1],as[1])*pop$SP1[i-1]))/K)
    }
    
    return(pop)
  }

## Save the function to a source code file
dump("LessNaiveLotka",file="LessNaiveLotka.R")
