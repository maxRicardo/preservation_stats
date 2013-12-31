#Return a data frame with the summary of vlaues 
#on a specific data set in a Frame

summary_info = function(data){
  
  df = data.frame(mean = mean(data),
                  sd = sd(data),
                  min = min(data),
                  max = max(data))
  
  return(df)
  
}

distribution_test = function(data){
  
  summ = summary_info(data)
  
  hist(data,probability=T)
  curve(dnorm(x,summ$mean,summ$sd),-3*summ$mean,3*summ$mean,col = "red",add = T)
  curve(dexp(x,1/summ$mean),-3*summ$mean,3*summ$mean,col = "blue",add = T)
  curve(dunif(x,summ$min,summ$max),-3*summ$mean,3*summ$mean,col = "green",add = T) 
}