setwd('/mnt/sdb2/OneDrive/Who-Am-I/Data Science-AI/course-data-science-specialization-JHU/2-R-Programming/')
complete <- function(directory, id = 1:332){
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