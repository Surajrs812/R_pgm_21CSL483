
# Program 1: Write an R program to print fibonacci series upto given number n

fibonacci <- function(n){
  if(n==1)
    return(0)
  else if(n==2)
    return(1)
  else 
    return(fibonacci(n-1)+fibonacci(n-2))
}

limit <- as.numeric(readline('Enter the series range: '))
for(i in 0:limit+1)
  cat(fibonacci(i))
