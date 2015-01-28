# OnlineRcode83.R

MatrixLotka2<-function(T=N,
                     pop=population,
                     am=alpha.means,
                     as=alpha.sd,
                     rm=r.means, 
                     rs=r.sd, 
                     K=CarryingCapacity){
	
	  r1 <- rnorm(T, rm[1], rs[1])
	  a1 <- rnorm(T, am[1], as[1])
	  r2 <- rnorm(T, rm[2], rs[2])
	  a2 <- rnorm(T, am[2], as[2])
	
	  for(i in 2:T){
	    pop[i,1]<-pop[i-1,1]*r1[i]*
	      (1-(pop[i-1,1]+(a2[i]*pop[i-1,2]))/K)

	    pop[i,2]<-pop[i-1,2]*r2[i]*
      (1-(pop[i-1,2]+(a1[i]*pop[i-1,1]))/K)
	  }
	  
	  return(pop)
	}
