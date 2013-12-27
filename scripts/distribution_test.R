qiime_avg = function(x){
  summ = 0
  count = 0
  
  for(i in 2:ncol(x)){
    if(x[i] != 0){
      summ = summ+x[i]
      count = count +1
    }
  }
  
  if(count == 0){
    print(" No data !")
    return(count)
    
  }
  else{
    result = summ/count
    cat("Average: ",result,"\n")
    return(result)
  }
  
}

row_table_avg = function(x){
  for(i in 1:nrow(x)){
    z = data.matrix(x[i,])
    qiime_avg(z)
  }
}