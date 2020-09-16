#1

filecsv <-
    "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
filepdf <-
    "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
download.file(filecsv, destfile = "./getdatasshid.csv", method = "curl")
download.file(filepdf, destfile = "./PUMSDataDict06.pdf", method = "curl")
data <- read.csv("getdatasshid.csv")
nrow(subset(data, data$VAL == '24'))
View(data$VAL)

#3
filexlsx <-
    'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx'
download.file(filexlsx, destfile = './DATA.gov_NGAP.xlsx', method = 'curl')

install.packages("xlsx")
library("xlsx")
dat = read.xlsx(
    './DATA.gov_NGAP.xlsx',
    1,
    rowIndex = 18:23,
    colIndex = 7:15,
    header = TRUE
)
sum(dat$Zip * dat$Ext, na.rm = T)


#4
library(XML)
fileXML <-
    "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(fileXML , useInternal = TRUE)
rootNode <- xmlRoot(doc)
xmlName (rootNode)
sum(xpathSApply(rootNode,"//zipcode",xmlValue) == 21231)

#5
filecsv <-
    "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(filecsv, destfile = "./getdatass06pid.csv", method = "curl")

install.packages("data.table")
library("data.table")

DT <- fread('./getdatass06pid.csv')

system.time(tapply(DT$pwgtp15,DT$SEX,mean))

system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))

system.time(mean(DT$pwgtp15,by=DT$SEX))

system.time(DT[,mean(pwgtp15),by=SEX])

system.time(mean(DT[DT$SEX==1,]$pwgtp15))

