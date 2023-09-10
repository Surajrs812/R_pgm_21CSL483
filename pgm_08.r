
# Read data from file 
original_data <- read.table("~/Programs/R Programming Lab/data.txt", header = TRUE)

# Display the original data
cat("Original Data:\n")
print(original_data)

# Replace negative values with zero using apply
modified_data <- data.frame(apply(original_data, 2, function(column) ifelse(column < 0, 0, column)))

# Call the function to display data modification
cat("\nData after replacing negative values with zero:\n")
print(modified_data)

# Function to calculate mean, variance, and standard deviation
calculate_stats <- function(column) {
  stats <- c(
    mean = mean(column),
    variance = var(column),
    std_dev = sd(column)
  )
  return(stats)
}

# Use apply to calculate statistics for each column
column_orig_stats <- lapply(original_data, calculate_stats)


# Use apply to calculate statistics for each column
column_modified_stats <- lapply(modified_data, calculate_stats)

# Convert the list of statistics into a data frame
stats_orig_df <- do.call(rbind, column_orig_stats)
#rownames(stats_orig_df) <- c("Mean", "Variance", "Standard Deviation")

# Print the statistics
cat("\nColumn Original Statistics:\n")
print(stats_orig_df)

# Convert the list of statistics into a data frame
stats_modified_df <- do.call(rbind, column_modified_stats)
#rownames(stats_modified_df) <- c("Mean", "Variance", "Standard Deviation")

# Print the statistics
cat("\nColumn Modified Statistics:\n")
print(stats_modified_df)