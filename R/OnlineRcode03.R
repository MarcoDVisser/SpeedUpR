## OnlineRcode03.R

Rprof(file="InterpreterQuirks.out",interval = 0.02,
	  line.profiling =TRUE)

InterpreterQuirks(N=1e5) # run 100 thousand times

Rprof(append=FALSE) # stop profiling
