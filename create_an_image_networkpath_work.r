library(RODBC)
channel <- odbcConnect("kevin_local_64");


png(filename = "\\\\casql1\\KevinImport\\images\\Rplot.png")


library("MASS")
data(cats)
str(cats)
summary(cats)
with(cats, plot(Bwt, Hwt))



file.name <- "\\\\casql1\\KevinImport\\images\\Rplot.png"
dev.off()

args=(commandArgs(TRUE))
RImageID <- args[0]

query <-sprintf(
"INSERT INTO ION.dbo.boxplotresult (RImageID, CreatedDateTime, RImage) SELECT 1, GETDATE() as CreatedDateTime, * FROM OPENROWSET(BULK N'%s', SINGLE_BLOB) AS import",file.name) 

sqlQuery(channel, query)

query