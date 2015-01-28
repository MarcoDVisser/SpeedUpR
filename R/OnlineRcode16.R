# OnlineRcode16.R

                                        # final figure

# For full analyses see /speedups/src/figures/finalfigures/figure1.R
load(file="~/symlinks/git/speedups/datasets/interpreterquirks.RData")
y <- c(mean(ft),mean(fct),mean(gt),mean(gct),mean(ht)
,mean(hct),mean(it),mean(ict),mean(mt),mean(slt))

sdz <- c(sd(ft),sd(fct),sd(gt),sd(gct),sd(ht),sd(hct),
sd(it),sd(ict),sd(mt),sd(slt))

par(las=1)
a <- barplot(y,
names.arg=toupper(letters[1:length(y)]),col=c("black","grey"),
width=1,xlab="Mean execution time (seconds)",
log="x", horiz = T,xlim=c(0.1,10),
space=rep(c(0.6,0.1),5)
)
abline(v=0)

segments(y,a,y+sdz,a)
#segments(a+0.1,y+sdz,a-0.1,y+sdz)

text(rep(0.32,dim(a)[1]),a,c(
"N/(1+N) - interpreted",
"N/(1+N) - compiled",
"(N/(1+N)) - interpreted",
"(N/(1+N)) - compiled",
"((N/(1+N))) - interpreted",
"((N/(1+N))) - compiled",
"(((N/(1+N)))) - interpreted",
"(((N/(1+N)))) - compiled",
"mean(x)",
"sum(x)/length(x)"),
srt=0,
col=c("white","black"),cex=1.1)

#compiled speed up 
SpeedUpComp <- round(mean(y[seq(1,10,2)]/y[seq(2,10,2)]),1)

#mean example
MeanEx <- round(y[9]/y[10],1)

#Average slowdown parentheses
SlowDownPar <- round(mean(diff(ptimes[-1]/ptimes[1]))*100,1)
