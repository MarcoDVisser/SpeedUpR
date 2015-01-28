# OnlineRcode17.R

N<-7.5*10^2 #Number of records per site

S<-1000 # Number of sites
BioData<-data.frame(S=rpois(N*S,15),
                    site=as.factor(rep(1:S,N)))
