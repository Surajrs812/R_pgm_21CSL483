# R_pgm_21CSL483
Repository containing all 10 programs of R programming lab of 4th semester

1. [Program 1](pgm_01.R)
   - Question:
     ```
     Write an R program to print the Fibonacci sequence.
     ```
   
2. [Program 2](pgm_02.R)
   - Question:
     ```
     Write a R Program to find the roots of a quadratic equation by considering all types of roots.
     ```

3. [Program 3](pgm_03.R)
   - Question:
     ```
     Write a program in R that uses a loop to find the minimum of a vector x, without using any predefined
     functions like min(...) or sort(...). You will need to define a variable, x.min say, in which to keep the smallest
     value you have yet seen. Start by assigning x.min <- x[1] then use a for loop to compare x.min with x[2], x[3],
     etc. If/when you find x[i] < x.min, update the value of x.min accordingly.
     ```

4. [Program 4](pgm_04.R)
   - Question:
     ```
     Write a program in R that generates a random number between 1 and 10 and prompts the user to guess the
     number. If the user's guess is too high, the program should print "Too high!". If the user's guess is too low,
     the program should print "Too low!". If the user's guess is correct, the program should print
     "Congratulations!"
     ```

5. [Program 5](pgm_05.R)
   - Question:
     ```
     Write a program in R that prompts the user to enter a sentence and counts the number of vowels (a, e, i, o,
     u) and consonants in the sentence using an if statement and a for loop.
     ```

6. [Program 6](pgm_06.R)
   - Question:
     ```
     Write a program in R that creates a data frame with two columns: a list of names and a list of corresponding
     ages. Use the apply family of functions to calculate the mean and median for the age of all the people in the
     data frame.
     ```

7. [Program 7](pgm_07.R)
   - Question:
     ```
     Write a program in R that defines different or multiple functions that take a data frame as an argument and
     return the mean, median, and standard deviation respectively, of a specified column. Call the function with
     a data frame that contains at least one column with numeric values.
     ```

8. [Program 8](pgm_08.R)
   - Question:
     ```
     Write a program in R that reads in a list of numbers from a file and replaces any negative values with zero
     using the apply family of functions to calculate and display the mean, variance and standard deviation of
     each column in the data frame.
     ```

9. [Program 9](pgm_09.R)
   - Question:
     ```
     Write a program in R that defines student class with name, age, and height as attributes. Convert the names
      of the students into uppercase and use different or multiple functions that take a data frame as an argument
      and return the mean, median, and standard deviation respectively, of a specified column. Call the function
      with a data frame that contains at least one column with numeric values and display the results for mean,
      median, and SD.
      NOTE: CONSIDER AT LEAST 10 STUDENT RECORDS..
     ```

10. [Program 10](pgm_10.R)
    - Question:
      ```
      "In R, create a program to manage student records using two S3 classes. One is the StudentRecord class, which represents objects as lists with named elements 
      'name,' 'subjects completed,' 'grades,' and 'credit.' This class includes a method for the generic function mean that calculates a weighted GPA with subjects       
       weighted by credit, as well as a custom print method that formats and arranges subjects by year code. The second class is the Cohort class, which represents 
       objects as lists with a single element, 'students,' consisting of a list of StudentRecord objects. The Cohort class includes a method for mean that calculates and 
       prints the mean GPA for every student in the cohort and a custom print method that neatly displays the records of each student in the cohort."
      
      ```

