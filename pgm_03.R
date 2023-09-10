# Write an R program that uses a loop to find the minimum of a vector x without using any predefined functions like min() or sort()

x <- sample(1:100, 10)
cat("Vector x: ", x)
min <- x[1]
for(i in x)
{
  if(i < min)
    min <- i
}
cat("\nMinimum of vector x is", min)