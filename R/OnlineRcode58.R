# OnlineRcode58.R

                                        #include <R.h>
#include <Rmath.h>

/* Rewrite of  InterpreterQuirks.R */
void SimpleC(int *nc, double *dnc, double *answerc) {

  int n = nc[0]; 
  double dn = dnc[0];
  int i;

  for (i=0; i<n; i++){
    answerc[i] = (dn/(1+dn));
  }
}
