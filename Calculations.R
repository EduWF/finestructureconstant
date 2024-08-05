---
  title: "Bootstrapping and Hypothesis Testing for Fine Structure Constant"
author: "Your Name"
date: "`r Sys.Date()`"
output: html_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Introduction

The fine structure constant (FSC), denoted as \(\alpha\), is a fundamental physical constant characterizing the strength of the electromagnetic interaction between elementary charged particles. Its approximate value is \(1/137\), or more precisely, around \(0.00729927\). In this analysis, we explore whether a set of experimental measurements can be statistically associated with the fine structure constant using bootstrapping and hypothesis testing methods.

## Data and Concepts

We start with a given set of measurements from an experiment:
  ```{r data}
# Experimental measurements
data <- c(172.91260, 172.92493, 172.89540, 172.92753, 172.8640, 172.87806, 172.888833, 172.92753, 172.86406, 172.96766, 172.88926, 172.83700, 172.92100, 172.84166)
```

### Bootstrapping

Bootstrapping is a resampling method that allows us to estimate the sampling distribution of a statistic by repeatedly sampling, with replacement, from the observed data. This technique helps in estimating the mean and constructing confidence intervals without assuming a specific distribution for the data.

### Implementing Bootstrapping

We use the `boot` package in R to perform 4000 bootstrap iterations to estimate the mean and confidence interval of the measurements.

```{r bootstrap, message=FALSE}
# Load necessary library
library(boot)

# Define a function to calculate the mean
mean_function <- function(data, indices) {
  return(mean(data[indices]))
}

# Perform bootstrapping with 4000 iterations
set.seed(123) # For reproducibility
bootstrap_results <- boot(data, statistic = mean_function, R = 4000)

# Calculate the confidence intervals
conf_intervals <- boot.ci(bootstrap_results, type = "perc")

# Print the results
bootstrap_results
conf_intervals
```

## Parametric and Non-Parametric Tests

We perform both parametric (t-test) and non-parametric (Wilcoxon test) hypothesis tests to compare the sample mean against the fine structure constant.

### Parametric Test

The one-sample t-test checks if the mean of our sample is statistically different from the fine structure constant.

```{r t-test}
# Hypothesized value (fine structure constant)
fsc <- 0.00729927

# Convert the measurements to match the scale of the FSC
scaled_data <- (data / 100 - 1) / 100

# Perform one-sample t-test
t_test_result <- t.test(scaled_data, mu = fsc)

t_test_result
```

### Non-Parametric Test

The Wilcoxon signed-rank test is a non-parametric test that does not assume normal distribution and is used to compare the median of the sample to the hypothesized median.

```{r wilcoxon-test}
# Perform Wilcoxon signed-rank test
wilcoxon_test_result <- wilcox.test(scaled_data, mu = fsc, exact = FALSE)

wilcoxon_test_result
```

## Conclusion

The bootstrapped mean and confidence intervals provide insight into the central tendency of the experimental measurements. The parametric t-test and non-parametric Wilcoxon test offer statistical evidence to assess whether the sample mean significantly deviates from the fine structure constant. These combined methods help in validating or refuting the hypothesis that the experimental measurements express the fine structure constant.
