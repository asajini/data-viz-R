### Exercise 2. Exploring the Galton Dataset - SD and MAD
Galton dataset consists of different heights of male and female.

Now for the same data compute the standard deviation and the median absolute deviation (MAD).

```
library(HistData)
data(Galton)
x <- Galton$child
sd(x)
mad(x)
```

> Console O/p 

```
>sd(x)
[1] 2.517941
> mad(x)
[1] 2.9652
```
