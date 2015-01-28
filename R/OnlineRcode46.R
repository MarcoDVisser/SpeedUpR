# OnlineRcode46.R

subR<-1000

## Set the number of workers we will use
ncores<-3

## Split the jobs
splitR<-table(cut(1:subR,ncores,labels=F))
print(splitR)
