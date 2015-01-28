## OnlineRcode82.R

## make aprof object
LongMatrixLotkaAprof <- aprof("MatrixLotka.R","LongMatrixLotka.out")

## Calculate line density
LineDens<-readLineDensity(LongMatrixLotkaAprof)

## sort line numbers descending
TopLines<-LineDens$Line.Numbers[order(1/LineDens$Call.Density)]

## take a closer look
targetedSummary(target=TopLines[1],LongMatrixLotkaAprof)
targetedSummary(target=TopLines[2],LongMatrixLotkaAprof)
