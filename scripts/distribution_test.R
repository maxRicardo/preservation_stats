#Return a data frame with the summary of vlaues 
#on a specific data set in a Frame

summary_info = function(data,name=NULL){
  
  df = data.frame(mean = mean(data),
                  sd = sd(data),
                  min = min(data),
                  max = max(data))
  
  return(df)
  
}


#to extract the values of a certain vector on the 
#data frame that compose the imported datum
generate_vector = function(data,line=1){
  temp = data.matrix(data[line,2:ncol(data)])
  temp = temp[temp != 0]
  return(temp)
  
}

distribution_test = function(data){
  
  summ = summary_info(data)
  
  hist(data,probability=T)
  curve(dnorm(x,summ$mean,summ$sd),-3*summ$mean,3*summ$mean,col = "red",add = T)
  curve(dexp(x,1/summ$mean),-3*summ$mean,3*summ$mean,col = "blue",add = T)
  curve(dunif(x,summ$min,summ$max),-3*summ$mean,3*summ$mean,col = "green",add = T) 
}