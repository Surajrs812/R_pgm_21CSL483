# Create a data frame with names and ages
data <- data.frame(
  Name = c('Jake', 'Amy', 'Rosa', 'Charles', 'Terry', 'Raymond', 'Gina'),
  Age = c(30,28,29,40,38,55,31)
)

# Calculate the mean and median of ages using apply family functions
mean_age <- mean(data$Age)
median_age <- median(data$Age)

# Print the data frame and the calculated statistics
cat("Data Frame:\n")
print(data)

cat("\nMean Age:", mean_age, "\n")
cat("Median Age:", median_age, "\n")
