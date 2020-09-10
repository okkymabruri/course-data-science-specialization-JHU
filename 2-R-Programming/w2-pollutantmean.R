pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of  the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate"
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    ## NOTE: Do not round the result

    # set directory
    currentdir <- paste(getwd(), '/', directory, '/', sep = '')
    
    # set data
    files <- as.character(list.files(currentdir))
    paths <- paste(currentdir, '/', files, sep='')
    data <- data.frame()
    
    # looping to get data
    for(i in id){
        data <- rbind(data, read.csv(paths[i]))
    }
    return(mean(data[,pollutant], na.rm = TRUE))
}

pollutantmean("w2-specdata", "sulfate", 1:10)

## 4.064128

pollutantmean("w2-specdata", "nitrate", 70:72)

## 1.706047

pollutantmean("w2-specdata", "nitrate", 23)

## 1.280833
