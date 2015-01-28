## OnlineRcode91.R

dyn.load("lotka.so")

LotkaCWrapper<-function(time=1:N,alphamean=alpha.means,
alphasd=alpha.sd,rmean=r.means,rsd=r.sd, K=CarryingCapacity)

{
   out <- .Call("lotkac",
   time=as.double(time),
   alphamean=as.double(alphamean),
   alphasd=as.double(alphasd),
   rmean=as.double(rmean),
   rsd=as.double(rsd),
   K=as.double(K))

           return(out)
}

## reset seeds for simulations
set.seed(1)

#Set N to 10000 to compare with previous results
N=10000
#time the function

LotkaCT<-system.time(
ResultsC <- LotkaCWrapper()
)[3]

print(LotkaCT)
