# OnlineRcode57.R

SimpleR<-function(N){
  answer<-numeric(N)
  for (i in 1:N) { answer[i]<-(N/(1+N))} 
  return(answer)
}
