# Here my answer in Quiz W4

#
set.seed(1)
rpois(5, 2)

#
set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e
y

#
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)
