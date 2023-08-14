data(iris)
dim(iris) 
str(iris)
summary(iris)
sapply(iris[, 1:4], sd)
aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = mean)
aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = sd) 
quantile(iris$Sepal.Length)
quantile(iris$Sepal.Width)
quantiles <- quantile(iris$Sepal.Length, probs = c(0, 0.25, 0.5, 0.75, 1))
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantiles)
aggregate(iris[, 1:4], by = list(Species = iris$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = mean)
aggregate(iris[, 1:4], by = list(Species = iris$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = function(x) mean(sd(x)))
pivot_table <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarize_all(mean)
print(pivot_table)