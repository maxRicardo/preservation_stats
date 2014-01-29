#Return a data frame with the summary of vlaues 
#on a specific data set in a Frame

summary_info = function(data,name=NULL,...){
  
  df = data.frame(mean = mean(data),
                  sd = sd(data),
                  min = min(data),
                  max = max(data))
  
  return(df)
  
}


#to extract the values of a certain vector on the 
#data frame that compose the imported datum

parse_vector = function(data,line=1){
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

dagostino.pearson.test <- function(x) {
  # from Zar (1999), implemented by Doug Scofield, scofield at bio.indiana.edu
  DNAME <- deparse(substitute(x))
  n <- length(x)
  x2 <- x * x
  x3 <- x * x2
  x4 <- x * x3
  # compute Z_g1
  k3 <- ((n*sum(x3)) - (3*sum(x)*sum(x2)) + (2*(sum(x)^3)/n)) /
    ((n-1)*(n-2))
  g1 <- k3 / sqrt(var(x)^3)
  sqrtb1 <- ((n - 2)*g1) / sqrt(n*(n - 1))
  A <- sqrtb1 * sqrt(((n + 1)*(n + 3)) / (6*(n - 2)))
  B <- (3*(n*n + 27*n - 70)*(n+1)*(n+3)) / ((n-2)*(n+5)*(n+7)*(n+9))
  C <- sqrt(2*(B - 1)) - 1
  D <- sqrt(C)
  E <- 1 / sqrt(log(D))
  F <- A / sqrt(2/(C - 1))
  Zg1 <- E * log(F + sqrt(F*F + 1))
  # compute Z_g2
  G <- (24*n*(n-2)*(n-3)) / (((n+1)^2)*(n+3)*(n+5))
  k4 <- (((n*n*n + n*n)*sum(x4)) - (4*(n*n + n)*sum(x3)*sum(x)) -
           (3*(n*n - n)*sum(x2)^2) + (12*n*sum(x2)*sum(x)^2) - 
           (6*sum(x)^4)) /(n*(n-1)*(n-2)*(n-3))
  g2 <- k4 / var(x)^2
  H <- ((n-2)*(n-3)*abs(g2)) / ((n+1)*(n-1)*sqrt(G))
  J <- ((6*(n*n - 5*n + 2)) / ((n+7)*(n+9))) * sqrt((6*(n+3)*(n+5)) /(n*(n-2)*(n-3)))
  K <- 6 + (8/J)*(2/J + sqrt(1 + 4/(J*J)))
  L <- (1 - 2/K) / (1 + H*sqrt(2/(K-4)))
  Zg2 <- (1 - 2/(9*K) - (L^(1/3))) / (sqrt(2/(9*K)))
  K2 <- Zg1*Zg1 + Zg2*Zg2
  pk2 <- pchisq(K2, 2, lower.tail=FALSE)
  RVAL <- list(statistic = c(K2 = K2), p.value = pk2, method =
                 "D'Agostino-Pearson normality test\n\nK2 is distributed as Chi-squared
with df=2", alternative = "distribution is not normal", data.name =
                 DNAME)
  class(RVAL) <- "htest"
  return(RVAL)
}