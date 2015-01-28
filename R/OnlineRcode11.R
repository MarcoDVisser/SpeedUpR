##OnlineRcode11.R


mat <- matrix(ncol=1e3,nrow=1e3)
for(i in 1:1e3) { 
	for(j in 1:1e3) {
	mat[i,j] <- runif(1) } }						
