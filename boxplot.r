library(RODBC)
channel <- odbcConnect("kevin_local_64");

png(filename = "C:\\Work\\Rplot.png")

library("MASS")
data(cats)
str(cats)
summary(cats)
 with(cats, plot(Bwt, Hwt))



file.name <- "C:\\Work\\Rplot.png"
dev.off()


args=(commandArgs(TRUE))
RImageID <- args[1]

query <-sprintf(
"INSERT INTO kevin_database.dbo.boxplotresult (RImageID, CreatedDateTime, RImage) SELECT %s, GETDATE() as CreatedDateTime, * FROM OPENROWSET(BULK N'%s', SINGLE_BLOB) AS import",RImageID, file.name) 

sqlQuery(channel, query)

