pollutantmean <- function(directory, pollutant, id = 1:332){
  #Create a list of iles in directory argument
  fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  values <- numeric()     #creates an empty data frame
  
  #loop through the .csb file 
  for(i in id) {
    data <- read.csv(fileList[i])
    values <- c(values, data[[pollutant]])  #subset the column that matches the 'pollutant' agument
  }
  #Calculate the mean value
  mean(values, na.rm = TRUE)
  
}

pollutantmean("C:/Users/rashmkc.ANT/Documents/Assignment 1 Air Pollution")
