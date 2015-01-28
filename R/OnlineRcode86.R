## OnlineRcode86.R

/* Rcode74.R */
#include <R.h>
#include <Rmath.h>
#include <Rinternals.h>

SEXP OurCFunction(SEXP A, SEXP B) {

/* assign pointers to R objects */
double *a=REAL(A);
double *b=REAL(B);

/* creat new R objects in C for result storage. */
SEXP RESULT;

/* protect and allocate R objects in C. */
/* and assign pointer. */
PROTECT(RESULT=allocVector(REALSXP,1));
double *result=REAL(RESULT);

/* use rnorm, in which we update the random number generator state*/

    GetRNGstate();
    result[0] = rnorm(a[0],b[0]);
    PutRNGstate();

/* unprotect R objects in C. */
UNPROTECT(1);

/* return our results to R */
return RESULT;

}
