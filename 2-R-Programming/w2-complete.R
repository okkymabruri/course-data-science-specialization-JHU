complete <- function(directory, id = 1:332) {
    ## 'director' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the from:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    
    # set directory
    currentdir <- paste(getwd(), '/', directory, sep = '')
    
    # set data
    files <- as.character(list.files(currentdir))
    paths <- paste(currentdir, '/', files, sep = '')
    result <- data.frame(id = integer(), nobs = integer())
    
    # looping to process data
    for (i in id) {
        result[i, 1] <- i
        result[i, 2] <- sum(complete.cases(read.csv(paths[i])))
    }
    result[complete.cases(result), ]
}

complete("specdata", 1)

##   id nobs
## 1  1  117

complete("specdata", c(2, 4, 8, 10, 12))

##   id nobs
## 1  2 1041
## 2  4  474
## 3  8  192
## 4 10  148
## 5 12   96

complete("specdata", 30:25)

##   id nobs
## 1 30  932
## 2 29  711
## 3 28  475
## 4 27  338
## 5 26  586
## 6 25  463

complete("specdata", 3)

##   id nobs
## 1  3  243
