pollutantmean <- function(directory, pollutant, id = 1:332){
  ## obtaining the required files by storing them into fileList variable
  fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  ##creating empty vector using numeric constructor
  values <- numeric()
  ## reading all 1:332 .csv file 
  for(i in id) {
    
    data <- read.csv(fileList[i])
    ##calculating all mean and saving in values one by one
    values <- c(values, data[[pollutant]])
  }
  ##calculate the mean without the NA values
  mean(values, na.rm = TRUE)
  
}

##checking the data reading or not
pollutantmean("C:/Users/rashmkc.ANT/Documents/specdata/", "sulfate")
