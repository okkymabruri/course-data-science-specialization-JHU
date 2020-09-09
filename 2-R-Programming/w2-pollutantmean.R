pollutantmean <- function(directory, pollutant, id=1:332){
    setwd(directory)
    idcsv <- if(id<10){
            paste('00', id, sep = '')
        }
        else if(id > 10 & id<100){
            paste('0', id, sep = '')
        }
        else{id}
    data <- read.csv(paste(idcsv,'.csv',sep = ''))
    return mean(data$pollutant, na.rm = TRUE)
}