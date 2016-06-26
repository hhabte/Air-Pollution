complete <- function(directory, id = 1:332) {
  files_full <- list.files(directory, full.names = TRUE)
  data <- data.frame()
  
  for (i in id) {
    info <- read.csv(files_full[i])          
    nobs <- sum(complete.cases(info))
    temp <- data.frame(i, nobs)
    data <- rbind(data, temp)
  }
  
  colnames(data) <- c("id", "nobs")
  data
}
