# OnlineRcode59.R

## Open a connection to a file on the system and in 
## the working directory
sink("Simple.c")

## Send C code to this file with "cat"
cat("
/* Rewrite of  InterpreterQuirks.R */
void SimpleC(int *nc, double *dnc, double *answerc){

 int n = nc[0]; 
 double dn = dnc[0];
 int i;

    for (i=0; i<n; i++){
      answerc[i] = (dn/(1+dn));
    }
}
")

#stop writing Simple.c
sink(NULL)
