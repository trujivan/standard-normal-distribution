---
title: "Standard Normal Distribution"
author: "Vanessa Trujillo"
date: "1/08/2020"
output: html_document
---

```{r setup, include=TRUE}
knitr::opts_chunk$set(echo = TRUE)

# "This problem illustrates quartile calculations using random samples of different sizes from the standard normal distribution.

# Use set.seed(1237) and rnorm(n, mean = 0, sd = 1) with n = 10, n = 30, n = 100 and n = 300 to draw four different random samples from the standard normal distribution. Reset set.seed(1237) prior to drawing each of the four samples.

# For each sample, calculate the first, second and third quartile using quantile(). Use “type = 2” (method used in Business Statistics) and “type = 7” (R default) and generate quartiles for each.

# Display the results. The quartiles for the standard normal distribution are -0.6745, 0.0 and +0.6745 as shown using qnorm(c(0.25, 0.5, 0.75), mean = 0, sd = 1, lower.tail = TRUE). Note below.

# qnorm(c(0.25, 0.5, 0.75), mean = 0, sd = 1, lower.tail = TRUE)
# [1] -0.6744898  0.0000000  0.6744898"

# Add your set.seed(), rnorm() and quantile() code to this code 'chunk':
set.seed(1237) 
randA <- rnorm(10, mean = 0, sd = 1) 
randB <- rnorm(30, mean = 0, sd = 1) 
randC <- rnorm(100, mean = 0, sd = 1) 
randD <- rnorm(300, mean = 0, sd = 1) 

#Take note of the results for the first and third quartile. Compare the computed results between the two methods (type = 2 and type = 7).

#RESPONSE: The results are exactly the same.

randAQuant2 <- quantile(randA, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 2)
randAQuant7 <- quantile(randA, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 7)
cat(randAQuant2)
cat(randAQuant7)

#Take note of the results for the first and third quartile. Compare the computed results between the two methods (type = 2 and type = 7).  

#RESPONSE: The results are exactly the same.

randBQuant2 <- quantile(randB, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 2)
randBQuant7 <- quantile(randB, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 7)
cat(randBQuant2)
cat(randBQuant7)


#Take note of the results for the first and third quartile. Compare the computed results between the two methods (type = 2 and type = 7).

#RESPONSE: The results are exactly the same.

randCQuant2  <- quantile(randC, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 2)
randCQuant7 <- quantile(randC, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 7)
cat(randCQuant2)
cat(randCQuant7)

#Take note of the results for the first and third quartile. Compare the computed results between the two methods (type = 2 and type = 7).

#RESPONSE: The results are exactly the same.

randDQuant2 <- quantile(randD, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 2)
randDQuant7 <- quantile(randD, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 7)
cat(randDQuant2)
cat(randDQuant7)

qnorm(c(0.25, 0.5, 0.75), mean = 0, sd = 1, lower.tail = TRUE)
```

```{r, include=TRUE}
#What does this exercise indicate about describing a population distribution with samples?

#RESPONE: This exercise indicates that a population distributuion regardless of the sample size will yield the same results since the population distribution is constructed of large sample size. 
```