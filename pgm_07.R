# Function to calculate mean
calculate_mean <- function(column) {
  return(mean(column, na.rm = TRUE))
}

# Function to calculate median
calculate_median <- function(column) {
  return(median(column, na.rm = TRUE))
}

# Function to calculate variance
calculate_variance <- function(column) {
  return(var(column, na.rm = TRUE))
}

# Function to calculate standard deviation
calculate_std_dev <- function(column) {
  return(sd(column, na.rm = TRUE))
}

# Function to calculate standard error
calculate_std_error <- function(column) {
  return(sd(column, na.rm = TRUE) / sqrt(length(column)))
}

# Function to calculate statistics for a single column
calculate_column_stats <- function(column) {
  stats <- c(
    mean = calculate_mean(column),
    median = calculate_median(column),
    variance = calculate_variance(column),
    std_dev = calculate_std_dev(column),
    std_error = calculate_std_error(column)
  )
  return(stats)
}

# Create a sample dataframe
data <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David", "Emma"),
  age = c(25, 32, 45, 28, 22),
  income = c(50000, 60000, 75000, 55000, 40000),
  expenses = c(30000, 35000, 40000, 32000, 28000)
)

# Numeric columns
numeric_columns <- sapply(data, is.numeric)

# Use lapply to calculate statistics for each numeric column
numeric_stats <- lapply(data[, numeric_columns], calculate_column_stats)

# Convert the list of statistics into a data frame
numeric_stats_df <- do.call(rbind, numeric_stats)
rownames(numeric_stats_df) <- paste0("Numeric_", colnames(data)[numeric_columns])

# Print numeric statistics
print("Numeric Column Statistics:")
print(numeric_stats_df)
