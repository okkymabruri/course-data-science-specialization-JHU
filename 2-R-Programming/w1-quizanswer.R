#Here my answer in Quiz W1

#4
x = 4L
class(x)

#5
x <- c(4, "a", TRUE)

#6
x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x, y)

#8
x <- list(2, "a", "b", TRUE)
x[[2]]

#9
x <- 1:4
y <- 2:3
x + y

#10
x <- c(17, 14, 4, 5, 13, 12, 10)
x [x > 10] <- 4
x [x == 4] > 10

#see header name
head(airquality)

#see total row
tail(airquality)

#see row 47
airquality[47, 1:5]

#sum na values
sum(is.na(airquality$Ozone))

#mean without na values
mean(airquality$Ozone, na.rm=1)

#subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90
z <- print(subset(airquality, airquality$Ozone > 31 & airquality$Temp > 90))
mean(z$Solar.R)

#mean of Temp when month is equal to 6
z <- print(subset(airquality, airquality$Month == 6))
mean(z$Temp)

#max of ozone when month is equal to 6
z <- print(subset(airquality, airquality$Month == 5))
max(z$Ozone,na.rm = 1)
