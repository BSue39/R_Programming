bubble_sort <- function(x) {
  n <- length(x)
  
  # Outer loop for passes through the array
  for (i in 1:(n -1)) {
    swapped <- FALSE # Flag to optimize: if no swaps in a pass, array is sorted
    
    # Inner loop for comparisons and swaps in each pass
    # The last 'i' elements are already sorted and don't need to be checked
    for (j in 1:(n - 1)) {
      if (x[j] > x[j + 1]) {
        # Swap elements if they are in the wrong order
        temp <- x[j]
        x[j] <- x[j + 1]
        x[j + 1] <- temp
        swapped <- TRUE
      }
    }
    
    # If no elements were swapped in this pass. the array is sorted
    if (!swapped) {
      break
    }
  }
  return(x)
}

# Example usage:
my_vector <- c(64, 34, 25, 12, 22, 11, 90)
sorted_vector <- bubble_sort(my_vector)
print(sorted_vector)