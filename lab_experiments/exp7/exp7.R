# Question: Write R programs for basic tasks:
#   1. Find the factors of a number
#   2. Generate a vector of 10 random integers between -50 and 50
#   3. Print numbers 1-100 with FizzBuzz logic

cat("=== EXPERIMENT 7: BASIC R PROGRAMS ===\n\n")

find_factors <- function(n) {
  if (n <= 0) {
    stop("Please enter a positive integer.")
  }
  factors <- c()
  for (i in 1:n) {
    if (n %% i == 0) {
      factors <- c(factors, i)
    }
  }
  return(factors)
}

number <- 36
cat("--- Task 1: Factors of a Number ---\n")
cat("Factors of", number, "are:\n")
print(find_factors(number))
cat("\n")

cat("--- Task 2: Random Integers Between -50 and 50 ---\n")
set.seed(123)
random_integers <- sample(-50:50, 10, replace = TRUE)
cat("Generated 10 Random Integers:\n")
print(random_integers)
cat("\n")

cat("--- Task 3: FizzBuzz Logic (1 to 100) ---\n")

fizz_buzz <- function() {
  output <- character(100)
  for (i in 1:100) {
    if (i %% 3 == 0 && i %% 5 == 0) {
      output[i] <- "FizzBuzz"
    } else if (i %% 3 == 0) {
      output[i] <- "Fizz"
    } else if (i %% 5 == 0) {
      output[i] <- "Buzz"
    } else {
      output[i] <- as.character(i)
    }
  }
  return(output)
}

fizzbuzz_result <- fizz_buzz()
for (i in 1:100) {
  cat(sprintf("%-8s", fizzbuzz_result[i]))
  if (i %% 10 == 0) cat("\n")
}
