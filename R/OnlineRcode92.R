## OnlineRcode92.R

load("lotkaresults.RDATA")
## only use first 10 000 of MatrixLotka results
## to conform to the rest!
ResultsMatrix <- ResultsMatrix[1:10000,]
par(mfrow=c(2,2),mar=c(4,4,1,1),fg='black')
## scaler
k <- 0.05
#Naive lines
plot(ResultsNaive$SP1~ResultsNaive$time,type='l',col='red',ylim=c(0,CarryingCapacity)*k,main="A",
xlab="",ylab="")
lines(ResultsNaive$SP2~ResultsNaive$time,type='l',col='green')
## Less Naive lines
plot(ResultsLessNaive$SP1~ResultsLessNaive$T,type='l',col='red',ylim=c(0,CarryingCapacity)*k,main="B",
xlab="",ylab="")
lines(ResultsLessNaive$SP2~ResultsLessNaive$T,type='l',col='green')
## BC lines
plot(ResultsMatrix[,1]~ResultsMatrix[,3],type='l',col='red',ylim=c(0,CarryingCapacity)*k,main="C",
xlab="",ylab="")
lines(ResultsMatrix[,2]~ResultsMatrix[,3],type='l',col='green')
## C lines 
plot(ResultsC[[1]]~c(1:N),type='l',col='red',ylim=c(0,CarryingCapacity)*k,main="D",
xlab="",ylab="")
lines(ResultsC[[2]]~c(1:N),type='l',col='green')

parsave <- par(new = TRUE, mfrow=c(1,1),  mar = c(0,0,0,0))
## set up this layer with easy coordinates x[0,1] and y[0,1]
plot(0,0,xlim=c(0,1),ylim=c(0,1),type='n',xlab='',ylab='',col='white') 

#add x axis arrow
arrows(0.3,0.0,0.7,0,lwd=2) ## add arrow
text(0.5,-0.02, 'Population state')

## add y axis arrow
arrows(0.0,0.3,0,0.7,lwd=2) ## add arrow
text(-0.02,.5, 'Time', srt=90)

## plot parameters  reset to prior values
par(parsave)
