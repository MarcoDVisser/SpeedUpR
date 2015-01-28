## OnlineRcode01.R

InterpreterQuirks<-function(N){
  for (i in 1:N) { N/(1+N) }
  for (i in 1:N) { (((N/(1+N))))} 
  for (i in 1:N) { N/{1+N} } 
  for (i in 1:N) { {{{N/{1+N}}}} } 
}

## Save the function to a source code file
dump("InterpreterQuirks",file="InterpreterQuirks.R")
