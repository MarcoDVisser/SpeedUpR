## OnlineRcode76.R

## swithing from data.frame to a matrix
population <- matrix(c(numeric(N),numeric(N),1:N),ncol=3,nrow=N,byrow=F)

## set initial population
population[1,] <- c(1,1,1)

MatrixLotka<-function(T=N,
                      pop=population,
                      am=alpha.means,
                      as=alpha.sd,
                      rm=r.means, 
                      rs=r.sd, 
                      K=CarryingCapacity){

  for(i in 2:T){
    pop[i,1]<-pop[i-1,1]*rnorm(1,rm[1],rs[1])*
      (1-(pop[i-1,1]+(rnorm(1,am[2],as[2])*pop[i-1,2]))/K)

    pop[i,2]<-pop[i-1,2]*rnorm(1,rm[2],rs[2])*
      (1-(pop[i-1,2]+(rnorm(1,am[1],as[1])*pop[i-1,1]))/K)
  }
  
  return(pop)
}

## Save the function to a source code file
dump("MatrixLotka",file="MatrixLotka.R")
