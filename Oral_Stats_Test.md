P-Value Test Per BodySite (Ultralow against the world!)
========================================================


#reading from table file



oral
--------------------

generating variables per Preservation Method:  


```r
oral_ultralow = parse_vector(oral, 1)
oral_nitrogen = parse_vector(oral, 2)
oral_Phen_CL = parse_vector(oral, 3)
oral_Fresh = parse_vector(oral, 4)
```


Normality Test with Shapiro-Wilk Test :


```
## 
## 	Shapiro-Wilk normality test
## 
## data:  oral_ultralow
## W = 0.8334, p-value = 0.1475
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  oral_nitrogen
## W = 0.9283, p-value = 0.4824
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  oral_Phen_CL
## W = 0.9454, p-value = 0.704
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  oral_Fresh
## W = 0.9538, p-value = 0.764
```


Testing difference significance using Kolmogorov-Smirnov & Wilcoxon Test :  
-----------------------------------------------------------------------------


```r
ks.test(oral_ultralow, oral_nitrogen)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  oral_ultralow and oral_nitrogen
## D = 0.4, p-value = 0.8571
## alternative hypothesis: two-sided
```

```r
wilcox.test(oral_ultralow, oral_nitrogen, alternative = "greater", exact = T)
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  oral_ultralow and oral_nitrogen
## W = 10, p-value = 0.2857
## alternative hypothesis: true location shift is greater than 0
```

```r

ks.test(oral_ultralow, oral_Phen_CL)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  oral_ultralow and oral_Phen_CL
## D = 0.6, p-value = 0.3571
## alternative hypothesis: two-sided
```

```r
wilcox.test(oral_ultralow, oral_Phen_CL, alternative = "greater")
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  oral_ultralow and oral_Phen_CL
## W = 21, p-value = 0.04762
## alternative hypothesis: true location shift is greater than 0
```

```r

ks.test(oral_ultralow, oral_Fresh)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  oral_ultralow and oral_Fresh
## D = 0.4, p-value = 0.873
## alternative hypothesis: two-sided
```

```r
wilcox.test(oral_ultralow, oral_Fresh, alternative = "greater")
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  oral_ultralow and oral_Fresh
## W = 13, p-value = 0.5
## alternative hypothesis: true location shift is greater than 0
```
