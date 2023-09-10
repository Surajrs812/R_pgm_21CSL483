# Define the studentRecord class
studentRecord <- list(
  name = NULL,
  subjects_completed = NULL,
  grades = NULL,
  credit = NULL
)

# Create the mean method for studentRecord
mean.studentRecord <- function(x, ...) {
  total_credits <- sum(x$credit)
  weighted_grades <- sum(x$grades * x$credit)
  mean_gpa <- weighted_grades / total_credits
  
  return(mean_gpa)
}

# Create the print method for studentRecord
print.studentRecord <- function(x, ...) {
  cat("Name:", x$name, "\n")
  cat("Subjects Completed:", x$subjects_completed, "\n")
  cat("Grades:", x$grades, "\n")
  cat("Credit:", x$credit, "\n")
}

# Create the cohort class
cohort <- list(
  students = NULL
)

# Create the mean method for cohort
mean.cohort <- function(x, ...) {
  student_gpas <- sapply(x$students, mean.studentRecord)
  mean_gpa <- mean(student_gpas)
  
  return(mean_gpa)
}

# Create the print method for cohort
print.cohort <- function(x, ...) {
  for (student in x$students) {
    print(paste(student))
    cat("---------------------------\n")
  }
}

# Create a sample student record
student <- studentRecord
student$name <- "John Doe"
student$subjects_completed <- c("Math", "English", "Science")
student$grades <- c(80, 90, 85)
student$credit <- c(3, 4, 3)

# Calculate the mean GPA for the student
mean_gpa <- mean.studentRecord(student)
cat("Mean GPA:", mean_gpa, "\n")

# Print the student record
print.studentRecord(student)

# Create a sample cohort
cohort <- cohort
cohort$students <- list(student, student)

# Calculate the mean GPA for the cohort
mean_gpa_cohort <- mean.cohort(cohort)
cat("Mean GPA for Cohort:", mean_gpa_cohort, "\n")

# Print the student records in the cohort
print.cohort(cohort)

