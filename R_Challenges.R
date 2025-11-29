# R Challenge 1
# Variable Creation and Printing
x <- 10 # Create a variable 'x' and assign the value 10

# Print the value of 'x' along with a descriptive message
cat("The value of x is:", x)

# R Challenge 2
# Initialize a variable to score the sum
sum_even <- 0

# Loop through numbers from 2 to 100
for (i in 2:100) {
  # Check if the number is even
  if ( i %% 2 ==0) {
    # Add the even number to the sum
    sum_even <- sum_even + i
  }
}

# Print the final sum
print(paste("The sum of even numbers from 2 to 100 is:", sum_even))

# R Challenge 3
factorial_recursive <- function(n) {
  # Base case: factorial of 0 or 1 is 1
  if (n <= 1) {
    return(1)
  } else {
    # Recursive step: n * factorial of (n-1)
    return(n * factorial_recursive(n - 1))
  }
}

# Calculate and print the factorial for n=5
n_value <- 5
result <- factorial_recursive(n_value)
print(paste("The factorial of", n_value, "is:", result))

# R Challenge 4
count_unique_vowels <- function(input_string) {
  # Convert the string to lowercase for case-insensitive comparison
  lower_string <- tolower(input_string)
  
  # Define the set of vowels
  vowels <- c("a", "e", "i", "o", "U")
  
  # Split the string into individual characters
  characters <- strsplit(lower_string, "")[[1]]
  
  # Find the unique vowels present in the string
  unique_vowels_found <- unique(characters[characters %in% vowels])
  
  # Return the count of unique vowels
  return(length(unique_vowels_found))
}

# Define the input string
my_string <- "Hello, world!"

# Call the function and print the results
vowel_count <- count_unique_vowels(my_string)
print(paste("The number of unique vowels in '", my_string, "' is:", vowel_count))

# R Challenge 5
# Define the list of numbers
numbers <- c(10, 20, 30, 40, 50)

# Define the corresponding weights
weights <- c(0.1, 0.2, 0.3, 0.25, 0.15)

# Calculate the weighted average
weighted_average <- weighted.mean(numbers, weights)

# Print the weighted average
print(weighted_average)

# R Challenge 6
# Data Exploration and Visualization
summary(iris)

plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Scatter Plot of Sepal Length vs Sepal Width",
     xlab = "Sepal Length (cm)",
     ylab = "Sepal Width (cm)",
     col = iris$Species,
     pch = 19) # pch=19 for solid circles
legend("topright", legend = levels(iris$Species), col = 1:length(levels(iris$Species)), pch = 19)