P-Value Test Per BodySite (Ultralow against the world!)
========================================================


#reading from table file



skin
--------------------

generating variables per Preservation Method:  


```r
skin_ultralow = parse_vector(skin, 1)
skin_nitrogen = parse_vector(skin, 2)
skin_Phen_CL = parse_vector(skin, 3)
skin_Fresh = parse_vector(skin, 4)
```


Normality Test with Shapiro-Wilk Test :


```
## 
## 	Shapiro-Wilk normality test
## 
## data:  skin_ultralow
## W = 0.9117, p-value = 0.4779
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  skin_nitrogen
## W = 0.8899, p-value = 0.3567
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  skin_Phen_CL
## W = 0.6131, p-value = 0.0009319
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  skin_Fresh
## W = 0.8023, p-value = 0.08458
```


Testing difference significance using Kolmogorov-Smirnov & Wilcoxon Test :  
-----------------------------------------------------------------------------


```r
ks.test(skin_ultralow, skin_nitrogen)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  skin_ultralow and skin_nitrogen
## D = 0.4, p-value = 0.873
## alternative hypothesis: two-sided
```

```r
wilcox.test(skin_ultralow, skin_nitrogen)
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  skin_ultralow and skin_nitrogen
## W = 9, p-value = 0.5476
## alternative hypothesis: true location shift is not equal to 0
```

```r

ks.test(skin_ultralow, skin_Phen_CL)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  skin_ultralow and skin_Phen_CL
## D = 0.8, p-value = 0.07937
## alternative hypothesis: two-sided
```

```r
wilcox.test(skin_ultralow, skin_Phen_CL)
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  skin_ultralow and skin_Phen_CL
## W = 21, p-value = 0.09524
## alternative hypothesis: true location shift is not equal to 0
```

```r

ks.test(skin_ultralow, skin_Fresh)
```

```
## 
## 	Two-sample Kolmogorov-Smirnov test
## 
## data:  skin_ultralow and skin_Fresh
## D = 0.4, p-value = 0.873
## alternative hypothesis: two-sided
```

```r
wilcox.test(skin_ultralow, skin_Fresh)
```

```
## 
## 	Wilcoxon rank sum test
## 
## data:  skin_ultralow and skin_Fresh
## W = 13, p-value = 1
## alternative hypothesis: true location shift is not equal to 0
```
