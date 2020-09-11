# Here my answer in Quiz W2

# 1. Question 1
# In dataset iris, what is the mean of 'Sepal.Length' for the species virginica? Please round your answer to the nearest whole number.

library(datasets)
data(iris)
?iris
tapply(iris$Sepal.Length, iris$Species, mean)


# 2. Continuing with the 'iris' dataset from the previous Question,
# what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
