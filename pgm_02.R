# Write a R program to find the roots of a quadratic equation 
print("Quadratic equation: ax^2 + bx + c = 0")
a <- as.numeric(readline("Enter a: "))
b <- as.numeric(readline("Enter b: "))
c <- as.numeric(readline("Enter c: "))

if (a == 0 && b == 0) {
  cat("Invalid\n")
} else if (a == 0) {
  cat("It's a linear equation.\n")
  cat("Root = ", -c / b, "\n")
} else {
  d <- b^2 - 4 * a * c
  if (d == 0) {
    cat("Real and Equal roots\n")
    cat("Root1 = Root2 = ", -b / (2 * a), "\n")
  } else if (d > 0) {
    cat("Real and distinct roots\n")
    cat("Root1 = ", (-b + sqrt(d)) / (2 * a), "\n")
    cat("Root2 = ", (-b - sqrt(d)) / (2 * a), "\n")
  } else {
    cat("Imaginary\n")
    real <- -b / (2 * a)
    imag <- sqrt(-d) / (2 * a)
    cat("Root1 = ", real, "+i(", imag, ")\n")
    cat("Root2 = ", real, "-i(", imag, ")\n")
  }
}
