## OnlineRcode78.R

## Plot the execution time per line
MatrixLotkaAprof <- aprof("MatrixLotka.R","MatrixLotka.out")
plot(MatrixLotkaAprof)
