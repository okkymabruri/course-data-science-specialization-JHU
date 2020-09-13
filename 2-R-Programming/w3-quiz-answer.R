# Here my answer in Quiz W2

# 1. Question 1
# In dataset iris, what is the mean of 'Sepal.Length' for the species virginica? Please round your answer to the nearest whole number.

library(datasets)
data(iris)
? iris
meandata <- tapply(iris$Sepal.Length, iris$Species, mean)
round(meandata[3])

# 2. Continuing with the 'iris' dataset from the previous Question,
# what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[, 1:4], 2, mean)

# 3. How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)? Select all that apply

library(datasets)
data(mtcars)
? mtcars
head(mtcars)
tapply(mtcars$mpg, mtcars$cyl, mean) # method 1
with(mtcars, tapply(mpg, cyl, mean)) # method 2
sapply(split(mtcars$mpg, mtcars$cyl), mean) # method 3

# 4.Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?

meandata <- tapply(mtcars$hp, mtcars$cyl, mean)
round(abs(meandata[1] - meandata[3]))

# 5. what happens when you next call the 'ls' function?
# debug(ls)
# undebug(ls)