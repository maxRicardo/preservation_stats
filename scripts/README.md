Preservation Distribution Test
==========================================


Objective 
-------------------------------------------
```
Basic idea behind this procedure is to stablish a 
real concept of the samples stats. behavior and 
determine the corect descriptive test for the 
correlation of the variables. 
```

Notes
---------
```
Here a log will be kept about the development of the tests
done so far 
```

1. Data have been distributed into tables   
  *feces    
  *skin   
  *oral   

2. Imported Skin fils as skin_data:

```{r}
skin_data <- read.csv("~/git/preservation_stats/presv_fig1_data/skin_fig1.csv")
View(skin_data)a = read.csv("")
```

3. To test and verify the data,The data imported will be graph and analyze 
   to determine their behavior.

```{r}
Example : 
  On Skin :   

1. skin_ultralow = data.matrix(skin_data[1,2:ncol(skin_data)])  
2. skin_ultralow = skin_ultralow[skin_ultralow != 0]  

likewise done with the other preservation types per body site
```
4. Analyzing the data per pres. on each body site

```{r}
Example: 
mean_skin_ultralow = mean(skin_ultralow)
sd_skin_ultralow = sd(skin_ultralow)
```

