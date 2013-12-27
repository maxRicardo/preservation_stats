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

3. To test and verify the data, function was created to calculate avg. as qiime program did:

```{r}
qiime_avg(x)

where X is a column of the skin_data frame
result of the import of the table

A function for automatic calculation of the avg 
per row in each table was created :

~row_table_avg(x)

```


