# Question: Create numeric, character, and logical vectors and display their type and content.

cat("=== EXPERIMENT 1: VECTORS IN R ===\n\n")

num_vector <- c(10.5, 20.3, 30.8, 40.2, 50.0)
int_vector <- c(1L, 5L, 10L, 15L, 20L)

cat("--- Numeric Vectors ---\n")
cat("Double Vector Content:\n")
print(num_vector)
cat("Type of Double Vector:", typeof(num_vector), "\n")
cat("Class of Double Vector:", class(num_vector), "\n\n")

cat("Integer Vector Content:\n")
print(int_vector)
cat("Type of Integer Vector:", typeof(int_vector), "\n")
cat("Class of Integer Vector:", class(int_vector), "\n\n")

char_vector <- c("Apple", "Banana", "Cherry", "Date", "Elderberry")

cat("--- Character Vector ---\n")
cat("Character Vector Content:\n")
print(char_vector)
cat("Type of Character Vector:", typeof(char_vector), "\n")
cat("Class of Character Vector:", class(char_vector), "\n\n")

log_vector <- c(TRUE, FALSE, TRUE, TRUE, FALSE)

cat("--- Logical Vector ---\n")
cat("Logical Vector Content:\n")
print(log_vector)
cat("Type of Logical Vector:", typeof(log_vector), "\n")
cat("Class of Logical Vector:", class(log_vector), "\n\n")

cat("--- Structure Summary ---\n")
str(num_vector)
str(char_vector)
str(log_vector)
