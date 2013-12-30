#Return a data frame with the summary of vlaues 
#on a specific data set in a Frame

Summary_info = function(data){
  
  df = data.frame(mean = mean(data),
                  sd = sd(data),
                  min = min(data),
                  max = max(data))
  
  return(df)
  
}

Distribution_test = function(data){
  
  summ = Summary_info(data)
  
  hist(data,probability=T)
  #curve(dnorm(x,summ$mean,summ$sd),col = "red",)
  
  
}