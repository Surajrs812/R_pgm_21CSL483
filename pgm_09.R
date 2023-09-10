
# Define the Student class
Student <- setClass(
  "Student",
  slots = c(
    name = "character",
    age = "numeric",
    height = "numeric"
  )
)

# Create an instance of the Student class
student1 <- new("Student", name = "Alice", age = 21, height = 165)
student2 <- new("Student", name = "Bob", age = 22, height = 178)
student3 <- new("Student", name = "Charlie", age = 21, height = 172)
student4 <- new("Student", name = "David", age = 19, height = 160)
student5 <- new("Student", name = "Emma", age = 23, height = 175)
student6 <- new("Student", name = "Frank", age = 28, height = 170)
student7 <- new("Student", name = "Grace", age = 34, height = 163)
student8 <- new("Student", name = "Henry", age = 20, height = 180)
student9 <- new("Student", name = "Ivy", age = 27, height = 168)
student10 <- new("Student", name = "Jack", age = 30, height = 175)

# Define functions to operate on Student objects
get_name_uppercase <- function(student) {
  return(toupper(student@name))
}

get_stats <- function(student) {
  age <- student@age
  height <- student@height
  
  stats <- list(
    mean_age = mean(age),
    median_age = median(age),
    mean_height = mean(height),
    median_height = median(height)
  )
  
  return(stats)
}

# Create lists to store results for each metric
names_upper <- character()
mean_ages <- numeric()
median_ages <- numeric()
mean_heights <- numeric()
median_heights <- numeric()

# Call functions for each student and populate the result lists
students <- list(student1, student2, student3, student4, student5,
                 student6, student7, student8, student9, student10)

for (student in students) {
  names_upper <- c(names_upper, get_name_uppercase(student))
  stats <- get_stats(student)
  
  mean_ages <- c(mean_ages, stats$mean_age)
  median_ages <- c(median_ages, stats$median_age)
  mean_heights <- c(mean_heights, stats$mean_height)
  median_heights <- c(median_heights, stats$median_height)
}

# Create a data frame to display the separate results
results <- data.frame(
  Names = names_upper
)

# Display the results
print(results)
print(paste("Mean Age: ", mean(mean_ages)))
print(paste("Median Age: ", median(median_ages)))
print(paste("Mean Height: ", mean(mean_heights)))
print(paste("Median Height: ", median(median_heights)))
