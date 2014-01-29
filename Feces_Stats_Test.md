P-Value Test Per BodySite (Ultralow against the world!)
========================================================


#reading from table file



Feces
--------------------

generating variables per Preservation Method:  


```r
feces_ultralow = parse_vector(feces, 1)
feces_nitrogen = parse_vector(feces, 2)
feces_Phen_CL = parse_vector(feces, 3)
feces_Fresh = parse_vector(feces, 4)
```


Normality Test with Shapiro-Wilk Test :


```
## 
## 	Shapiro-Wilk normality test
## 
## data:  feces_ultralow
## W = 0.9592, p-value = 0.8023
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  feces_nitrogen
## W = 0.9678, p-value = 0.8276
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  feces_Phen_CL
## W = 0.908, p-value = 0.4558
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  feces_Fresh
## W = 0.9248, p-value = 0.5612
```


Testing difference significance using Kolmogorov-Smirnov & Wilcoxon Test :  
-----------------------------------------------------------------------------


```r
ks.test(feces_ultralow, feces_nitrogen)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  feces_ultralow and feces_nitrogen
## D = 0.35, p-value = 0.873
## alternative hypothesis: two-sided
```

```r
wilcox.test(feces_ultralow, feces_nitrogen)
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  feces_ultralow and feces_nitrogen
## W = 9, p-value = 0.9048
## alternative hypothesis: true location shift is not equal to 0
```

```r
wilcox.test(feces_ultralow, feces_nitrogen, paired = T)
```

```
## Error: 'x' and 'y' must have the same length
```

```r

ks.test(feces_ultralow, feces_Phen_CL)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  feces_ultralow and feces_Phen_CL
## D = 0.4, p-value = 0.873
## alternative hypothesis: two-sided
```

```r
wilcox.test(feces_ultralow, feces_Phen_CL)
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  feces_ultralow and feces_Phen_CL
## W = 10, p-value = 0.6905
## alternative hypothesis: true location shift is not equal to 0
```

```r
wilcox.test(feces_ultralow, feces_Phen_CL, paired = T)
```

```
## 
## 	Wilcoxon signed rank test
## 
## data:  feces_ultralow and feces_Phen_CL
## V = 7, p-value = 1
## alternative hypothesis: true location shift is not equal to 0
```

```r

ks.test(feces_ultralow, feces_Fresh)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  feces_ultralow and feces_Fresh
## D = 0.4, p-value = 0.873
## alternative hypothesis: two-sided
```

```r
wilcox.test(feces_ultralow, feces_Fresh)
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  feces_ultralow and feces_Fresh
## W = 15, p-value = 0.6905
## alternative hypothesis: true location shift is not equal to 0
```

```r
wilcox.test(feces_ultralow, feces_Fresh, paired = T)
```

```
## 
## 	Wilcoxon signed rank test
## 
## data:  feces_ultralow and feces_Fresh
## V = 9, p-value = 0.8125
## alternative hypothesis: true location shift is not equal to 0
```

