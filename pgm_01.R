fibonacci <- function(n){
  if(n==1)
    return(0)
  else if(n==2)
    return(1)
  else 
    return(fibonacci(n-1)+fibonacci(n-2))
}

#driver code
limit <- as.numeric(readline('Enter the series range: '))
for(i in 1:limit+1)
  cat(fibonacci(i), " ")
