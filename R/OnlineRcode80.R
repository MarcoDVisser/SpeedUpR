## OnlineRcode80.R

## Calculate line density
LineDens<-readLineDensity(MatrixLotkaAprof)
## sort line numbers descending
TopLines<-LineDens$Line.Numbers[order(1/LineDens$Call.Density)]

## take a closer look
targetedSummary(target=TopLines[1],MatrixLotkaAprof)
targetedSummary(target=TopLines[2],MatrixLotkaAprof)
